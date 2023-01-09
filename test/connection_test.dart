//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:test/test.dart';

// This test only runs with a real skyle connected.

// void main() {
//   final et = ET();
//   setUpAll(() async {});

//   tearDownAll(() async {});
//   ConnectionTester.run(et);
// }

// class ConnectionTester {
//   static void run(ET et) {
//     group('Test connect and disconnect scenarios', () {
//       test('Test hard-connect, get versions, hard-disconnect in a loop', () async {
//         for (final _ in List.generate(10, (i) => i)) {
//           await et.connect();
//           final versions = await et.versions.get();
//           if (versions is DataSuccess) print(versions.data!.serial);
//           await et.disconnect();
//         }
//       });

//       test('Test soft-connect, get versions, soft-disconnect in a loop', () async {
//         await et.connect();
//         for (final _ in List.generate(10, (i) => i)) {
//           await et.trySoftReconnect();
//           final versions = await et.versions.get();
//           if (versions is DataSuccess) print(versions.data!.serial);
//           await et.softDisconnect();
//         }
//         await et.disconnect();
//       });
//     });
//   }
// }
