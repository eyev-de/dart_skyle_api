//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:typed_data';

BigInt convertBytesToBigInt(Uint8List bytes) {
  BigInt result = BigInt.zero;

  for (final byte in bytes) {
    // reading in big-endian, so we essentially concat the new byte to the end
    result = (result << 8) | BigInt.from(byte);
  }
  return result;
}
