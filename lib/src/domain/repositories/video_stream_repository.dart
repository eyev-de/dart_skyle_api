//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';

abstract class VideoStreamRepository {
  bool running = false;
  Future<void> startParsingIsolate();
  Future<void> stopParsingIsolate();
  Stream<DataState<List<int>>> request({required String url, Map<String, String>? headers});
  Future<void> cancel();
}
