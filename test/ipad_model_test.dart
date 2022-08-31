//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/generated/Skyle.pb.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('test', () {
    test('toIPadOptionsIPadModel', () {
      for (final model in IPadModel.values) {
        final otherModel = model.toIPadOptionsIPadModel();
        final otherOtherModel = IPadModel.fromIPadOptionsIPadModel(otherModel);
        print('${model.name} == ${otherOtherModel.name}');
        expect(model, otherOtherModel);
      }
    });

    test('fromIPadOptionsIPadModel', () {
      for (final model in IPadOptions_iPadModel.values) {
        final otherModel = IPadModel.fromIPadOptionsIPadModel(model);
        final otherOtherModel = otherModel.toIPadOptionsIPadModel();
        print('${model.name} == ${otherOtherModel.name}');
        expect(model, otherOtherModel);
      }
    });
  });
}

class IpadModelTest {
  static void run(TestClient client, TestServer server) {}
}
