import 'package:flutter/material.dart';
import 'config.dart';

const Color kPrimaryColor = Color(0xFF000000);
const Color kSecondaryColor = Color(0xff573353);
const Color kScaffoldBackground = Color(0xFF000000);

final kTitle = TextStyle(
    fontFamily: 'WorkSans',
    fontSize: SizeConfig.blockSizeH! * 7,
    color: kSecondaryColor,
    fontWeight: FontWeight.bold);

final kTitle2 = TextStyle(
  fontFamily: 'WorkSans',
  fontSize: SizeConfig.blockSizeH! * 6,
  color: kSecondaryColor,
);

final kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
);

final kBodyText2 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4,
  fontWeight: FontWeight.bold,
);

final kBodyText3 = TextStyle(
    color: kSecondaryColor,
    fontSize: SizeConfig.blockSizeH! * 3.8,
    fontWeight: FontWeight.normal);

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(0),
  // borderSide: BorderSide.none,
);

final kInputHintStyle = kBodyText2.copyWith(
  fontWeight: FontWeight.normal,
  color: kSecondaryColor.withOpacity(0.5),
);
