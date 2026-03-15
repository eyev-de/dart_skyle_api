//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../data/models/versions/versions.dart';
import '../../domain/repositories/versions_repository.dart';
import '../../generated/Skyle.pbgrpc.dart';

class VersionsRepositoryImpl implements VersionsRepository {
  SkyleClient? client;
  VersionsRepositoryImpl({this.client});
  @override
  Future<DataState<Versions>> get() async {
    try {
      if (client == null) throw NotConnectedException();
      final DeviceVersions versions = await client!.getVersions(Empty());
      return DataSuccess(
        Versions(
          firmware: versions.firmware,
          eyetracker: versions.eyetracker,
          calib: versions.calib,
          base: versions.base,
          serial: BigInt.parse(versions.serial.toString()),
          skyleType: versions.skyleType,
          isDemo: versions.isDemo,
        ),
      );
    } catch (error) {
      return DataFailed(error.toString());
    }
  }
}
