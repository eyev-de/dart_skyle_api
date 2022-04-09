//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/domain/entities/calibration_message.dart';
import 'package:test/test.dart';

void main() {
  final TestServer server = TestServer();
  final TestClient client = TestClient();

  setUpAll(() async {
    print('Starting server...');
    await server.main([]);
    print('Connecting to server...');
    await client.main([]);
    print('Connected');
  });

  tearDownAll(() async {
    print('Shutting down client...');
    await client.et.disconnect();
    print('Shutting down server...');
    await server.server.shutdown();
  });
  ProfilesTester.run(client, server);
}

class ProfilesTester {
  static void run(TestClient client, TestServer server) {
    // group('Profiles', () {
    //   test('Get profiles', () async {
    //     final profiles = await client.et.profiles.get();
    //     expect(profiles.first.id, equals(defaultProfile.iD));
    //     expect(profiles.first.name, equals(defaultProfile.name));
    //     expect(profiles.first.skill, equals(defaultProfile.skill));
    //   });

    //   test('Get current profile', () async {
    //     final currentProfile = await client.et.profiles.getCurrent();
    //     expect(currentProfile.id, equals(defaultProfile.iD));
    //     expect(currentProfile.name, equals(defaultProfile.name));
    //     expect(currentProfile.skill, equals(defaultProfile.skill));
    //   });

    //   test('Add profile, delete profile', () async {
    //     final profile = ProfileWrapper(data: Profile(iD: 2, name: 'Test', skill: Profile_Skill.Low));
    //     profile.client = client.et.client;
    //     final newProfile = await client.et.profiles.add(profile);
    //     expect(newProfile.id, profile.id);

    //     List<ProfileWrapper> profiles = await client.et.profiles.get();
    //     expect(profiles.length, equals(2));

    //     for (final p in profiles) {
    //       if (p.id == profile.id) {
    //         expect(p.id, equals(profile.id));
    //         expect(p.name, equals(profile.name));
    //         expect(p.skill, equals(profile.skill));
    //       }
    //     }

    //     final currentProfile = await client.et.profiles.getCurrent();
    //     expect(currentProfile.id, equals(profile.id));
    //     expect(currentProfile.name, equals(profile.name));
    //     expect(currentProfile.skill, equals(profile.skill));

    //     profile.client = client.et.client;
    //     final _ = await client.et.profiles.delete(currentProfile);

    //     profiles = await client.et.profiles.get();
    //     expect(profiles.length, equals(1));
    //   });
    // });
  }
}
