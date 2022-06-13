//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../generated/Skyle.proto/Skyle.pb.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart';

enum Skill {
  beginner,
  medium,
  advanced;

  factory Skill.fromProfileSkill(Profile_Skill skill) {
    switch (skill.value) {
      case 0:
        return Skill.beginner;
      case 1:
        return Skill.medium;
      case 2:
        return Skill.advanced;
      default:
        return Skill.medium;
    }
  }

  Profile_Skill toProfileSkill() {
    switch (this) {
      case Skill.beginner:
        return Profile_Skill.Low;
      case Skill.medium:
        return Profile_Skill.Medium;
      case Skill.advanced:
        return Profile_Skill.High;
    }
  }

  int get fixationFilterValue {
    switch (this) {
      case Skill.beginner:
        return 20;
      case Skill.medium:
        return 15;
      case Skill.advanced:
        return 10;
    }
  }

  int get gazeFilterValue {
    switch (this) {
      case Skill.beginner:
        return 25;
      case Skill.medium:
        return 20;
      case Skill.advanced:
        return 5;
    }
  }
}
