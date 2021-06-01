//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../clientchannelwrapper.dart';

class ClientChannelWrapperNative implements ClientChannelWrapper {
  @override
  ClientChannelBase getGRPCClient(
    String url,
    int port,
    ChannelOptions? options,
  ) {
    if (options != null) {
      return ClientChannel(
        url,
        port: port,
        options: options,
      );
    }
    return ClientChannel(
      url,
      port: port,
    );
  }
}

ClientChannelWrapper getClient() => ClientChannelWrapperNative();
