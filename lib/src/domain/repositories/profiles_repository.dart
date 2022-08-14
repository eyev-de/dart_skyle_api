//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../data/models/profile/profile.dart';

abstract class ProfilesRepository {
  @Deprecated('The Profiles API is deprecated')
  Stream<Profile> get();
  @Deprecated('The Profiles API is deprecated')
  Future<Profile> add(Profile profile);
  @Deprecated('The Profiles API is deprecated')
  Future<Profile> delete(Profile profile);

  Future<Profile> getCurrent();
  Future<Profile> setCurrent(Profile profile);
}
