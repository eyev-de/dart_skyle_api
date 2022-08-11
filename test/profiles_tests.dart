//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/data/models/profile/profile.dart';
import 'package:skyle_api/src/generated/Skyle.pb.dart' as grpc;
import 'package:skyle_api/src/test/skyle_service.dart';
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
    group('Profiles', () {
      test('Get profiles', () async {
        final profiles = await client.et.profiles.get().toList();
        final profile = profiles.first.toProfile();
        expect(profile.iD, equals(defaultProfile.iD));
        expect(profile.name, equals(defaultProfile.name));
        expect(profile.skill, equals(defaultProfile.skill));
      });

      test('Get current profile', () async {
        final currentProfile = await client.et.profiles.getCurrent();
        final profile = currentProfile.toProfile();
        expect(profile.iD, equals(defaultProfile.iD));
        expect(profile.name, equals(defaultProfile.name));
        expect(profile.skill, equals(defaultProfile.skill));
      });

      test('Add profile, delete profile', () async {
        final profile = Profile.fromProfile(grpc.Profile(iD: 2, name: 'Test', skill: grpc.Profile_Skill.Low));
        final newProfile = await client.et.profiles.add(profile);
        expect(newProfile.id, profile.id);

        List<Profile> profiles = await client.et.profiles.get().toList();
        expect(profiles.length, equals(2));

        for (final p in profiles) {
          if (p.id == profile.id) {
            expect(p.id, equals(profile.id));
            expect(p.name, equals(profile.name));
            expect(p.skill, equals(profile.skill));
          }
        }

        final currentProfile = await client.et.profiles.getCurrent();
        expect(currentProfile.id, equals(profile.id));
        expect(currentProfile.name, equals(profile.name));
        expect(currentProfile.skill, equals(profile.skill));

        final _ = await client.et.profiles.delete(currentProfile);

        profiles = await client.et.profiles.get().toList();
        expect(profiles.length, equals(1));
      });
    });
  }
}
