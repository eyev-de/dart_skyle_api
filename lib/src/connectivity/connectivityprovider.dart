//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import '../../et.dart';

import 'connectivitystub.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) './native/networkinterfaceprovider.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) './web/webconnectivityprovider.dart';

abstract class ConnectivityProvider {
  Connection state = Connection.disconnected;
  void start(void Function(Connection state) onConnectionChanged);
  void stop();
  factory ConnectivityProvider() => getConnectivityProvider();
}
