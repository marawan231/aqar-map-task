// ignore_for_file: deprecated_member_use

import 'package:aqar_map_task/core/constants/app_border_raduis.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/core/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';

ThemeData get appTheme => ThemeData(
      primaryColor: ColorManager.primary,
      // primarySwatch: ,
      colorScheme: const ColorScheme.light(
        primary: ColorManager.black,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      fontFamily: FontManager.poppinsFontFamily,
      scaffoldBackgroundColor: ColorManager.white,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.white,
        titleTextStyle: getBoldStyle(
          color: ColorManager.black,
          fontSize: 21.sp,
        ),
        iconTheme: IconThemeData(color: ColorManager.black, size: 20.sp),
      ),
      // App bar background color),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: ColorManager.primary),
      textTheme: TextTheme(
        headlineLarge: getBoldStyle(
          fontSize: 32.sp,
          color: ColorManager.black,
        ).copyWith(fontFamily: FontManager.poppinsFontFamily),
        headlineMedium: getMediumStyle(
            fontSize: 14.sp, color: ColorManager.black, height: 1.5.sp),
        labelLarge:
            getSemiBoldStyle(fontSize: 16.sp, color: ColorManager.white),
        // labelLarge: const TextStyle(color: Color(0xff121318)),
        // labelMedium: const TextStyle(color: Color(0xff121318)),
        // labelSmall: const TextStyle(color: Color(0xff121318)),
        // bodyLarge: const TextStyle(color: Color(0xff121318)),
        // bodyMedium: getBoldStyle(fontSize: 18.sp),
        // bodySmall: const TextStyle(color: Color(0xff121318)),
        // displayLarge: const TextStyle(color: Color(0xff121318)),
        // displayMedium: const TextStyle(color: Color(0xff121318)),
        // displaySmall: const TextStyle(color: Color(0xff121318)),
        // headlineLarge: const TextStyle(color: Color(0xff121318)),
        // headlineMedium: const TextStyle(color: Color(0xff121318)),
        // headlineSmall: const TextStyle(color: Color(0xff121318)),
        // titleLarge: const TextStyle(color: Color(0xff121318)),
        // titleMedium: const TextStyle(color: Color(0xff121318)),
        // titleSmall: const TextStyle(color: Color(0xff121318)),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.r35),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        // dragHandleColor: ColorManager.,
        dragHandleSize: Size(38, 4),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(ColorManager.primary),
        overlayColor: WidgetStateProperty.all(ColorManager.primary),
      ),

      inputDecorationTheme: const InputDecorationTheme(
        // isDense: true,
        filled: true,
        fillColor: ColorManager.white,
        // hintStyle: getMediumStyle(
        //   color: ColorManager.green2,
        //   fontSize: 14.sp,
        // ).copyWith(height: .11.sp),
        // contentPadding: EdgeInsetsDirectional.all(18.sp),
        // enabledBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(color: ColorManager.transparent, width: 1),
        //     borderRadius: BorderRadius.circular(AppBorderRadius.r8)),
        // focusedBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(color: ColorManager.primary, width: 1),
        //     borderRadius: BorderRadius.circular(AppBorderRadius.r8)),
        // disabledBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(color: ColorManager.white, width: 1),
        //     borderRadius: BorderRadius.circular(AppBorderRadius.r8)),
        // errorBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(color: ColorManager.error, width: 1),
        //     borderRadius: BorderRadius.circular(AppBorderRadius.r8)),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: ColorManager.error, width: 1),
        //   borderRadius: BorderRadius.circular(AppBorderRadius.r8),
        // ),
      ),

      // Navigation bar background color
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: ColorManager.black,
        selectedItemColor: ColorManager.black,
        selectedLabelStyle: getSemiBoldStyle(fontSize: 12.sp),
        unselectedLabelStyle:
            getRegularStyle(fontSize: 12.sp), // Navigation bar background color
      ),
      datePickerTheme: DatePickerThemeData(
        // surfaceTintColor: ColorManager.primary,
        headerBackgroundColor: ColorManager.primary,
        headerForegroundColor: ColorManager.white,
        headerHelpStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: 16.sp,
        ),
        // backgroundColor: ColorManager.white,

        headerHeadlineStyle: getBoldStyle(
          color: ColorManager.white,
          fontSize: 20.sp,
        ),
        dayStyle: getRegularStyle(
          color: const Color.fromARGB(255, 252, 205, 205),
          fontSize: 14.sp,
        ),
        // inputDecorationTheme: InputDecorationTheme(

        // ),
        todayBackgroundColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? ColorManager.primary.withOpacity(.9)
                : const Color.fromRGBO(161, 150, 150, 0)),
        // surfaceTintColor: ColorManager.primary,
        weekdayStyle: getRegularStyle(
          color: ColorManager.primary,
          fontSize: 14.sp,
        ),
        yearStyle: getRegularStyle(
          color: ColorManager.primary,
          fontSize: 14.sp,
        ),

        dayBackgroundColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? ColorManager.primary.withOpacity(.9)
                : const Color.fromRGBO(161, 150, 150, 0)),
        // headerHeadlineStyle: getBoldStyle(
        //   color: ColorManager.red,
        //   fontSize: 18.sp,
        // ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: ColorManager.primary,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius.r16)),
      ),
    );
