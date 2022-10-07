//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

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
        return Profile_Skill.low;
      case Skill.medium:
        return Profile_Skill.medium;
      case Skill.advanced:
        return Profile_Skill.high;
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
