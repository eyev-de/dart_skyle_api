//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_web.dart';

import '../clientchannelwrapper.dart';

class ClientChannelWrapperWeb implements ClientChannelWrapper {
  @override
  ClientChannelBase getGRPCClient(
    String url,
    int port,
    ChannelOptions? options,
  ) {
    final Uri uri = Uri.parse('http://$url:$port/');
    return GrpcWebClientChannel.xhr(uri);
  }
}

ClientChannelWrapper getClient() => ClientChannelWrapperWeb();
