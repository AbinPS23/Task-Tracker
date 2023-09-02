import 'package:flutter/material.dart';

import '../core/utils/color_constants.dart';

class AppStyle{
   static TextStyle anonymousPro = TextStyle(
    color: ColorConstant.mainBlack,
    fontSize:
      20,
    fontFamily: getFontStyle(),
    fontWeight: FontWeight.w400,
  );


  static String getFontStyle() {
    return 'Anonymous Pro';
  }

}