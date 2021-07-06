//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  SkyleClient? client;
  FilterOptions? filter;

  ProfileWrapper({required Profile data}) : _data = data;

  Profile get data => _data;

  int get id => _data.iD;

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
      if (client == null) throw Exception('Not connected');
      final StatusMessage res = await client!.setProfile(data);
      return res.success;
    } catch (error) {
      return false;
    }
  }

  Future<bool> setGazeFilter(int value) async {
    try {
      if (client == null) throw Exception('Not connected');
      // ignore: parameter_assignments
      value = _validate(value);
      final OptionsStateNotifier options = OptionsStateNotifier()..client = client;
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
      if (client == null) throw Exception('Not connected');
      // ignore: parameter_assignments
      value = _validate(value);
      final OptionsStateNotifier options = OptionsStateNotifier()..client = client;
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
  Widget Function(BuildContext context, ProfileWrapper profile, Animation<double> animation)? slideIt;

  SkyleClient? _client;
  final List<ProfileWrapper> _profiles = [];
  ProfileWrapper _current = ProfileWrapper(data: Profile.create()..iD = -1);
  GRPCFailed _error = GRPCFailed(error: '');

  ProfileWrapper get current => _current;
  List<ProfileWrapper> get profiles => _profiles;
  GRPCFailed get error => _error;
  // ignore: avoid_setters_without_getters
  set client(SkyleClient? client) {
    _client = client;
    for (final ProfileWrapper p in _profiles) {
      p.client = client;
    }
  }

  ResponseStream<Profile>? stream;

  Future<List<ProfileWrapper>> get() async {
    try {
      if (_client == null) throw Exception('Not connected');
      if (stream != null) throw Exception('Still streaming');
      stream = _client!.getProfiles(Empty());

      final List<ProfileWrapper> changed = [];
      await for (final Profile event in stream!) {
        final contains = _profiles.where((e) => e.id == event.iD);
        if (contains.isEmpty) {
          final profile = ProfileWrapper(data: event)..client = _client;
          _profiles.add(profile);
          changed.add(profile);
        }
      }
      if (changed.isNotEmpty) {
        SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
          for (final _ in changed) {
            listKey.currentState?.insertItem(profiles.length - 1);
          }
          notifyListeners();
        });
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
    stream = null;
    return _profiles;
  }

  Future<ProfileWrapper> delete(ProfileWrapper profile) async {
    try {
      if (_client == null) throw Exception('Not connected');
      if (stream != null) throw Exception('Still streaming');
      if (profiles.isEmpty) await get();
      final StatusMessage res = await _client!.deleteProfile(profile.data);
      if (res.success) {
        final index = profiles.indexOf(profile);
        final ProfileWrapper removed = profiles.removeAt(index);
        if (slideIt != null) {
          listKey.currentState?.removeItem(index, (c, a) => slideIt!(c, removed, a));
        }
        return await getCurrent();
      }
      throw Exception('Could not delete profile');
    } catch (error) {
      rethrow;
    }
  }

  Future<ProfileWrapper> add(ProfileWrapper profile) async {
    try {
      if (_client == null) throw Exception('Not connected');
      if (stream != null) throw Exception('Still streaming');
      if (profiles.isEmpty) await get();
      final added = await profile.select();

      if (added) {
        final currentList = [..._profiles];
        final newList = await get();
        final difference = newList.where((element) => !currentList.contains(element));
        if (difference.isNotEmpty && difference.length == 1) {
          return await getCurrent();
        }
      }
      throw Exception('Could not add profile');
    } catch (error) {
      rethrow;
    }
  }

  Future<ProfileWrapper> getCurrent() async {
    try {
      if (_client == null) throw Exception('Not connected');
      if (profiles.isEmpty) await get();
      final Profile temp = await _client!.currentProfile(Empty());
      if (temp.iD != _current.id) {
        _current = _profiles.firstWhere((element) => element.id == temp.iD);
        notifyListeners();
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
    return _current;
  }
}
