//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc_connection_interface.dart';

import 'clientchannelwrapperstub.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) './native/clientchannelwrappernative.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) './web/clientchannelwrapperweb.dart';

abstract class ClientChannelWrapper {
  ClientChannelBase getGRPCClient(
    String url,
    int port,
    ChannelOptions? options,
  );
  factory ClientChannelWrapper() => getClient();
}
