// //  Skyle API
// //
// //  Created by Konstantin Wachendorff.
// //  Copyright © 2022 eyeV GmbH. All rights reserved.
// //

// import 'dart:async';

// import '../../core/data_state.dart';
// import '../../core/exceptions.dart';
// import '../../domain/repositories/switch_repository.dart';
// import '../../generated/Skyle.proto/Skyle.pbgrpc.dart';
// import '../../generated/google/protobuf/empty.pb.dart';

// class SwitchRepositoryImpl implements SwitchRepository {
//   SkyleClient? client;
//   SwitchRepositoryImpl({this.client});
//   Timer? _timer;

//   @override
//   Future<DataState<ButtonActions>> setButton(ButtonActions request) async {
//     try {
//       if (client == null) throw NotConnectedException();
//       final ButtonActions ret = await client!.setButton(request);
//       return DataSuccess(ret);
//     } catch (error) {
//       return DataFailed(error.toString());
//     }
//   }

//   @override
//   void start() {
//     // Maybe limit?
//     // if (_timer == null || _timer != null && !_timer!.isActive)
//     _timer = Timer.periodic(const Duration(milliseconds: 500), (t) async {
//       try {
//         await _getStateAsync();
//       } catch (error) {
//         // if (state.isPresent) {
//         //   state.isPresent = false;
//         //   notifyListeners();
//         // }
//       }
//     });
//   }

//   @override
//   void stop() {
//     // TODO: implement stop
//   }

//   Future<Button> _getStateAsync() async {
//     try {
//       if (client == null) throw NotConnectedException();
//       final Button ret = await client!.getButton(Empty());
//       // if (_state != ret) {
//       //   _state = ret;
//       //   notifyListeners();
//       // }
//     } catch (error) {
//       // _error = GRPCFailed(error: error.toString());
//       // ET.logger?.e(error, StackTrace.current);
//       // notifyListeners();
//     }
//     // return _state;
//   }
// }
