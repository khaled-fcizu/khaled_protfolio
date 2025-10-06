import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/font_weight_helper.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';

abstract class TextStyles {
  static TextStyle font35WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font32WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font64WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 64.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font35PrimaryBold = TextStyle(
    color: AppColors.primary,
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font20WhiteRegular = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font20WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );

}