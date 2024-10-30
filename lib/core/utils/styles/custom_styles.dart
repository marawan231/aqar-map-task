import 'package:aqar_map_task/core/resources/assets_manager.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/core/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomStyles {
  // Example
  static TextStyle title = TextStyle(
    fontSize: 96.sp,
    fontFamily: FontManager.montserratFontFamily,
    color: ColorManager.primary,
    fontWeight: FontWeightManager.semiBold,
    shadows: const [
      Shadow(
        blurRadius: 0.0,
        color: Color(0xFF0296E5),
        offset: Offset(-0.25, -0.25),
      ),
      Shadow(
        blurRadius: 0.0,
        color: Color(0xFF0296E5),
        offset: Offset(0.25, -0.25),
      ),
      Shadow(
        blurRadius: 0.0,
        color: Color(0xFF0296E5),
        offset: Offset(0.25, 0.25),
      ),
      Shadow(
        blurRadius: 0.0,
        color: Color(0xFF0296E5),
        offset: Offset(-0.25, 0.25),
      ),
      Shadow(
        blurRadius: 4.0,
        color: Color(0xFF0296E5),
        offset: Offset(0.5, 0.5),
      ),
    ],
  );

  //
  static InputDecoration? customDecoration = InputDecoration(
    filled: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
    fillColor: ColorManager.primaryLight,
    
    hintText: 'Search',
    hintStyle: getRegularStyle(
      color: ColorManager.primaryDark,
      fontSize: 14.sp,
    ),
    suffixIcon: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsManager.searchIcon,
          width: 18.sp,
          height: 18.sp,
        ),
      ],
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        color: ColorManager.transparent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        color: ColorManager.black,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        color: ColorManager.error,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        color: ColorManager.error,
      ),
    ),
  );
}
