//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

enum Skill {
  beginner(0),
  medium(1),
  advanced(2);

  final int value;
  const Skill(this.value);

  factory Skill.fromProfileSkill(Profile_Skill skill) {
    return Skill.values.firstWhere((element) => element.value == skill.value);
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
