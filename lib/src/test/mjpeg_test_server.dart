//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;

class MJPEGTestServer {
  final List<String> paths;
  HttpServer? server;

  MJPEGTestServer({required this.paths});

  Stream<String> _buffer() async* {
    if (Platform.isIOS) {
      for (final path in paths) {
        final bytes = await rootBundle.load(path);
        yield String.fromCharCodes(bytes.buffer.asUint8List());
      }
    } else {
      final dir = Directory(paths.first);
      for (final jpeg in dir.listSync(recursive: true)) {
        if (jpeg is File && p.extension(jpeg.path) == '.jpg') {
          yield String.fromCharCodes(await jpeg.readAsBytes());
        }
      }
    }
  }

  Future<void> main(List<String> args) async {
    final address = InternetAddress.loopbackIPv4;
    const port = 8080;
    server = await HttpServer.bind(address, port, shared: true);
    print('Serving MJPEG...');
    server!.autoCompress = true;
    await _handleRequests(server!);
  }

  Future<void> stop({bool force = false}) async {
    await server?.close(force: force);
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
        print('Handeling root request...');
        await _handleGETRootRequests(request);
        break;
      case '/image.jpg':
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

  Future<void> _handleGETRootRequests(HttpRequest request) async {
    request.response.headers.clear();
    Map<String, Object> headers = {
      'Content-Type': 'text/html;charset=utf-8',
    };
    headers.forEach((name, value) => request.response.headers.add(name, value));

    request.response.write('<!doctype html>');
    request.response.write('<html>');
    request.response.write('<head><title>Stream</title><meta charset="utf-8" /></head>');
    request.response.write('<body>');
    request.response.write('<img src="image.jpg" />');
    request.response.write('</body>');
    request.response.write('</html>');
    await request.response.flush();
    await request.response.close();
  }

  Future<void> _handleGETImageRequests(HttpRequest request) async {
    request.response.headers.clear();
    Map<String, Object> headers = {
      'Cache-Control': 'no-store, no-cache, must-revalidate, pre-check=0, post-check=0, max-age=0',
      'Pragma': 'no-cache',
      'Connection': 'close', // keep-alive
      'Content-Type': 'multipart/x-mixed-replace; boundary=myboundary'
    };
    headers.forEach((name, value) => request.response.headers.add(name, value));
    await for (final chunk in _buffer()) {
      request.response.write('--myboundary\r\nContent-Type: image/jpg\r\nContent-length: ${chunk.length}\r\n\r\n');
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
