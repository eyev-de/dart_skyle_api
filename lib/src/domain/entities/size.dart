//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

class Size {
  final double width;
  final double height;
  const Size({required this.width, required this.height});
  Size.fromJson(Map<String, dynamic> json)
      : width = json['width'],
        height = json['height'];

  Map<String, dynamic> toJson() => {
        'width': width,
        'height': height,
      };
}
