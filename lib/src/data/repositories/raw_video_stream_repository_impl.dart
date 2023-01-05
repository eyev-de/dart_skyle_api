//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc_or_grpcweb.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/repositories/raw_video_stream_repository.dart';

import '../../generated/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';
import '../models/raw_image.dart';

class RawVideoStreamRepositoryImpl implements RawVideoStreamRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.RawImage>? _stream;

  RawVideoStreamRepositoryImpl({this.client});

  @override
  Stream<DataState<RawImage>> start() async* {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.rawImages(Empty());
      await for (final grpc.RawImage event in _stream!) {
        yield DataSuccess(RawImage.fromRawImage(event));
      }
    } on StillStreamingException catch (_) {
    } on NotConnectedException catch (_) {
    } catch (error) {
      _stream = null;
      yield DataFailed(error.toString());
    }
  }

  @override
  Future<void> stop() async {
    await _stream?.cancel();
    _stream = null;
  }
}
