//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:io';

import 'package:skyle_api/api.dart';

Future<void> main(List<String> args) async {
  final et = ET();

  et.connectionStream.listen((event) {
    print('Received connection stream: $event');
  });

  /// This can be awaited but does not have to be.
  /// The following is allowed as a non-blocking version:
  /// ```dart
  /// et.connect();
  /// ````
  await et.connect(grpcPort: 50052);

  /// Example on how to listen to the gaze position stream.
  et.gaze.start().listen((event) {
    if (event is DataSuccess) print(event.data!.toJson());
    if (event is DataFailed) print(event.error);
  });

  /// Example on how to listen to the positioning stream.
  /// There can either be a message [PositioningDataMessage] with the complete raw positioning data
  /// or a message [PositioningDistanceMessage] with the value of the distance of the user.
  /// The later is also used to determine the presence of the user.
  et.positioning.start().listen((event) {
    if (event is DataSuccess) {
      print(event.data!.eyes.toJson());
      print(event.data!.quality.toJson());
      print(event.data!.distance.name);
    }
    if (event is DataFailed) print(event.error);
  });

  await for (final profile in et.profiles.get()) {
    print(profile.id);
    print(profile.name);
    print(profile.skill);
  }

  final settings = await et.settings.get();
  if (settings is DataSuccess) print(settings.data!.toJson());
  if (settings is DataFailed) print(settings.error!.toString());

  final versions = await et.versions.get();
  if (versions is DataSuccess) print(versions.data!.toJson());
  if (versions is DataFailed) print(versions.error!.toString());

  int n = 0;
  await for (final _ in ProcessSignal.sigint.watch()) {
    if (++n == 2) {
      await et.disconnect();
      exit(0);
    }
    print('Press ctrl+c again to close.');
  }
}
