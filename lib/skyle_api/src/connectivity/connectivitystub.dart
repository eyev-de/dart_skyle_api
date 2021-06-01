//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import './connectivityprovider.dart';

ConnectivityProvider getConnectivityProvider() => throw UnsupportedError(
    'Cannot create a ConnectivityProvider without the packages dart:html or package:io');
