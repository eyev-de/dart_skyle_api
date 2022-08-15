//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:path/path.dart' as p;

import 'constants.dart';
import 'skyle_simulated_service.dart';

class TestServer {
  final service = SkyleSimulatedService();
  late Server _server;
  _MJPEGTestServer? _mjpegTestServer;

  TestServer({String imagePath = 'assets'}) {
    _server = Server([service]);
    _mjpegTestServer = _MJPEGTestServer(imagePath: imagePath, service: service);
  }

  Future<void> start() async {
    try {
      print('Starting API...');
      await _server.serve(address: 'localhost', port: grpcServerPort, shared: true);
      print('Starting MJPEG server...');
      unawaited(_mjpegTestServer?.start());
    } catch (e) {
      print(e);
    }
  }

  Future<void> stop() async {
    try {
      await _server.shutdown();
      await _mjpegTestServer?.stop();
    } catch (e) {
      print(e);
    }
  }
}

class _MJPEGTestServer {
  final SkyleSimulatedService service;
  final String imagePath;
  HttpServer? _server;

  _MJPEGTestServer({required this.imagePath, required this.service});

  Stream<String> _buffer() async* {
    final dir = Directory(imagePath);
    final files = dir.listSync(recursive: true)..sort(((a, b) => a.path.compareTo(b.path)));
    while (service.options.stream) {
      for (final jpeg in files) {
        if (jpeg is File && p.extension(jpeg.path) == '.jpg') {
          yield String.fromCharCodes(await jpeg.readAsBytes());
        }
      }
    }
  }

  Future<void> start() async {
    final address = InternetAddress.loopbackIPv4;
    _server = await HttpServer.bind(address, mjpegServerPort, shared: true);
    print('Serving MJPEG...');
    _server!.autoCompress = true;
    await _handleRequests(_server!);
  }

  Future<void> stop({bool force = false}) async {
    await _server?.close(force: force);
  }

  Future<void> _handleRequests(HttpServer server) async {
    await for (final HttpRequest request in server) {
      switch (request.method) {
        case 'GET':
          await _handleGETRequests(server, request);
          break;
        default:
          await _handleDefault(request);
          break;
      }
    }
  }

  Future<void> _handleGETRequests(HttpServer server, HttpRequest request) async {
    switch (request.uri.path) {
      case '/':
        print('Handeling image request...');
        await _handleGETImageRequests(request);
        break;
      case '/close':
        await _handleSimpleSuccess(request);
        await server.close();
        break;
      default:
        await _handleDefault(request);
        break;
    }
  }

  Future<void> _handleGETImageRequests(HttpRequest request) async {
    request.response.headers.clear();
    final Map<String, Object> _ = {
      'Cache-Control': 'no-store, no-cache, must-revalidate, pre-check=0, post-check=0, max-age=0',
      'Pragma': 'no-cache',
      'Connection': 'close', // keep-alive
      'Content-Type': 'multipart/x-mixed-replace; boundary=myboundary'
    }..forEach((name, value) => request.response.headers.add(name, value));
    await for (final chunk in _buffer()) {
      request.response.write('--myboundary\r\nContent-Type: image/jpg\r\nContent-length: ${chunk.length}\r\n\r\n');
      // print('Sending ${chunk.length} chars.');
      request.response.write(chunk);
      request.response.write('\r\n');
      await request.response.flush();
      await Future.delayed(const Duration(milliseconds: 20));
    }
    await request.response.close();
  }

  Future<void> _handleSimpleSuccess(HttpRequest request) async {
    request.response.statusCode = HttpStatus.accepted;
    request.response.write('Request was successful.');
    await request.response.close();
  }

  Future<void> _handleDefault(HttpRequest request) async {
    request.response.statusCode = HttpStatus.methodNotAllowed;
    request.response.write('Unsupported request: ${request.method}.');
    await request.response.close();
  }
}
