//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pbgrpc.dart' as grpc;

import 'skill.dart';

class Profile {
  final int id;
  final String name;
  final Skill skill;
  Profile({required this.id, required this.name, required this.skill});

  Profile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        skill = json['skill'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'skill': skill,
      };

  factory Profile.fromProfile(grpc.Profile profile) {
    return Profile(id: profile.iD, name: profile.name, skill: Skill.fromProfileSkill(profile.skill));
  }

  grpc.Profile toProfile() {
    return grpc.Profile(iD: id, name: name, skill: skill.toProfileSkill());
  }
}
