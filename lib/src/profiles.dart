//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/service_api.dart';

import '../api.dart';

extension ProfileSkillExtension on Profile_Skill {
  int get fixationFilterValue {
    switch (this) {
      case Profile_Skill.Low:
        return 20;
      case Profile_Skill.Medium:
        return 15;
      case Profile_Skill.High:
        return 10;
    }
    return 15;
  }

  int get gazeFilterValue {
    switch (this) {
      case Profile_Skill.Low:
        return 25;
      case Profile_Skill.Medium:
        return 20;
      case Profile_Skill.High:
        return 5;
    }
    return 20;
  }
}

class ProfileWrapper extends ChangeNotifier {
  final Profile _data;
  ClientChannelBase? channel;
  FilterOptions? filter;

  ProfileWrapper({required data}) : _data = data;

  Profile get data => _data;

  set name(String value) {
    _data.name = value;
    notifyListeners();
  }

  String get name => _data.name;

  set skill(Profile_Skill value) {
    _data.skill = value;
    notifyListeners();
  }

  Profile_Skill get skill => _data.skill;

  Future<bool> select() async {
    try {
      if (channel == null) throw Exception('Not connected');
      final StatusMessage res = await SkyleClient(channel!).setProfile(data);
      return res.success;
    } catch (error) {
      return false;
    }
  }

  Future<bool> delete() async {
    try {
      if (channel == null) throw Exception('Not connected');
      final StatusMessage res = await SkyleClient(channel!).deleteProfile(data);
      return res.success;
    } catch (error) {
      return false;
    }
  }

  Future<bool> setGazeFilter(int value) async {
    try {
      if (channel == null) throw Exception('Not connected');
      // ignore: parameter_assignments
      value = _validate(value);
      final OptionsStateNotifier options = OptionsStateNotifier()..channel = channel;
      final Options res = await options.filter(gazeFilter: value);
      if (res.hasFilter()) {
        filter = res.filter;
        notifyListeners();
        return res.filter.gazeFilter == value;
      }
      return false;
    } catch (error) {
      return false;
    }
  }

  Future<bool> setFixationFilter(int value) async {
    try {
      if (channel == null) throw Exception('Not connected');
      // ignore: parameter_assignments
      value = _validate(value);
      final OptionsStateNotifier options = OptionsStateNotifier()..channel = channel;
      final Options res = await options.filter(fixationFilter: value);
      if (res.hasFilter()) {
        filter = res.filter;
        notifyListeners();
        return res.filter.gazeFilter == value;
      }
      return false;
    } catch (error) {
      return false;
    }
  }

  int _validate(int value) {
    return value > 33
        ? 33
        : value < 3
            ? 3
            : value;
  }
}

class Profiles extends ChangeNotifier {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  ClientChannelBase? _channel;
  final List<ProfileWrapper> _profiles = [];
  ProfileWrapper _currentProfile = ProfileWrapper(data: Profile.create()..iD = -1);
  GRPCFailed _error = GRPCFailed(error: '');

  ProfileWrapper get currentProfile => _currentProfile;
  List<ProfileWrapper> get profiles => _profiles;
  GRPCFailed get error => _error;
  // ignore: avoid_setters_without_getters
  set channel(ClientChannelBase? channel) {
    _channel = channel;
    for (final ProfileWrapper p in _profiles) {
      p.channel = channel;
    }
  }

  ResponseStream<Profile>? stream;

  Future<List<ProfileWrapper>> getProfiles() async {
    try {
      if (_channel == null) throw Exception('Not connected');
      if (stream != null) throw Exception('Still streaming');
      stream = SkyleClient(_channel!).getProfiles(Empty());
      final List<ProfileWrapper> changed = [];
      await for (final Profile event in stream!) {
        final Iterable<ProfileWrapper> contains = _profiles.where((element) => element.data.iD == event.iD);
        if (contains.isEmpty) {
          final profile = ProfileWrapper(data: event)..channel = _channel;
          _profiles.add(profile);
          changed.add(profile);
        }
      }
      if (changed.isNotEmpty) {
        SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
          for (final element in changed) {
            listKey.currentState?.insertItem(profiles.length - 1);
          }
          notifyListeners();
        });
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      await Future.delayed(Duration.zero);
      notifyListeners();
    }
    stream = null;
    return _profiles;
  }

  Future<bool> deleteProfile(ProfileWrapper profile) async {
    try {
      if (_channel == null) throw Exception('Not connected');
      if (stream != null) throw Exception('Still streaming');
      final deleted = await profile.delete();
      if (deleted) {
        notifyListeners();
        return true;
      }
      return false;
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
      return false;
    }
  }

  Future<ProfileWrapper> getCurrentProfile() async {
    try {
      if (_channel == null) throw Exception('Not connected');
      final Profile temp = await SkyleClient(_channel!).currentProfile(Empty());
      if (temp.iD != _currentProfile.data.iD) {
        _currentProfile = ProfileWrapper(data: temp);
        notifyListeners();
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
    return _currentProfile;
  }
}
