//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc.dart';

import '../../core/exceptions.dart';
import '../../domain/repositories/profiles_repository.dart';
import '../../et.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart' as grpc;
import '../../generated/google/protobuf/empty.pb.dart';
import '../models/profile.dart';

class ProfilesRepositoryImpl implements ProfilesRepository {
  grpc.SkyleClient? client;
  ResponseStream<grpc.Profile>? _stream;

  ProfilesRepositoryImpl({this.client});

  @override
  Stream<Profile> get() async* {
    try {
      if (client == null) throw NotConnectedException();
      if (_stream != null) throw StillStreamingException();
      _stream = client!.getProfiles(Empty());
      await for (final grpc.Profile profile in _stream!) {
        yield Profile.fromProfile(profile);
      }
    } on NotConnectedException catch (_) {
      rethrow;
    } on StillStreamingException catch (error) {
      ET.logger?.w('Warning in getting profiles:', error, StackTrace.current);
      rethrow;
    } catch (error) {
      ET.logger?.e('Error in getting profiles:', error, StackTrace.current);
      rethrow;
    } finally {
      _stream = null;
    }
  }

  @override
  Future<Profile> delete(Profile profile) async {
    try {
      if (client == null) throw NotConnectedException();
      if (_stream != null) throw StillStreamingException();
      final grpc.StatusMessage res = await client!.deleteProfile(profile.toProfile());
      if (res.success) {
        return await getCurrent();
      }
      throw Exception('Could not delete profile');
    } on NotConnectedException catch (_) {
      rethrow;
    } on StillStreamingException catch (error) {
      ET.logger?.w('Warning deleting profile ${profile.name}:', error, StackTrace.current);
      rethrow;
    } catch (error) {
      ET.logger?.e('Error deleting profile ${profile.name}:', error, StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<Profile> add(Profile profile) async {
    try {
      if (client == null) throw NotConnectedException();
      if (_stream != null) throw StillStreamingException();

      final grpc.StatusMessage res = await client!.setProfile(profile.toProfile());
      if (res.success) {
        return await getCurrent();
      }
      throw Exception('Could not add profile');
    } on NotConnectedException catch (_) {
      rethrow;
    } on StillStreamingException catch (error) {
      ET.logger?.w('Warning adding profile ${profile.name}:', error, StackTrace.current);
      rethrow;
    } catch (error) {
      ET.logger?.e('Error adding profile ${profile.name}:', error, StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<Profile> getCurrent() async {
    try {
      if (client == null) throw NotConnectedException();
      final grpc.Profile profile = await client!.currentProfile(Empty());
      return Profile.fromProfile(profile);
    } on NotConnectedException catch (_) {
      rethrow;
    } catch (error) {
      ET.logger?.e('Error getting current profile:', error, StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<Profile> setCurrent(Profile profile) async {
    return add(profile);
  }
}
