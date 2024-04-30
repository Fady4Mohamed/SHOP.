import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/theming/color.dart';

class TextStyles {
  static TextStyle font24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font50Bold = TextStyle(
    fontSize: 50.sp,
    fontWeight: FontWeight.bold,
    color:ColorsManager.mainphosphorous 
  );
  static TextStyle font14greyregular =
      TextStyle(fontSize: 14.sp, color: const Color(0xff808080));
  static TextStyle font16Blacksimebolde = TextStyle(
      fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w700);
    static TextStyle font16 = TextStyle(
      fontSize: 16.sp, );
  static TextStyle font18simebolde =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700);
  static TextStyle font20simebolde =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800);
  static TextStyle font14 = TextStyle(
    fontSize: 14.sp,
  );
  static TextStyle font11Black = TextStyle(
    fontSize: 11.sp,
    color: Colors.black,
  );
  static TextStyle font18greyregular =
      TextStyle(fontSize: 18.sp, color: const Color(0xff808080));
}
