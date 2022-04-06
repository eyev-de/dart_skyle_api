// //  Skyle API
// //
// //  Created by Konstantin Wachendorff.
// //  Copyright © 2022 eyeV GmbH. All rights reserved.
// //

// import 'dart:async';

// import 'package:grpc/grpc_or_grpcweb.dart';
// import 'package:skyle_api/api.dart';

// class CursorCalibration {
//   StreamController<calibCursorMessages> control = StreamController<calibCursorMessages>();
//   ResponseStream<Point>? stream;
//   SkyleClient? client;
//   CursorCalibration();

//   Future<void> start({
//     required void Function(Point point) onData,
//     required void Function(GRPCFailed event) onError,
//   }) async {
//     try {
//       if (stream != null) throw StillStreamingException();
//       if (client == null) throw NotConnectedException();
//       control = StreamController<calibCursorMessages>();
//       stream = client!.cursorCalibration(control.stream);
//       await for (final Point point in stream!) {
//         onData(point);
//       }
//     } on NotConnectedException catch (_) {
//     } catch (error) {
//       stream = null;
//       ET.logger?.e('Error in cursor calibration:', error, StackTrace.current);
//       if (error is GrpcError && error.code == 1) return;
//       onError(GRPCFailed(error: error.toString()));
//     }
//   }

//   void confirm({bool confirmed = true}) {
//     final calibCursorMessages message = (calibCursorMessages()..calibConfirm = (CalibConfirm()..confirmed = confirmed));
//     control.add(message);
//   }

//   void next() {
//     final calibCursorMessages message = (calibCursorMessages()..empty = Empty());
//     control.add(message);
//   }

//   Future<void> stop() async {
//     await stream?.cancel();
//     stream = null;
//   }
// }
