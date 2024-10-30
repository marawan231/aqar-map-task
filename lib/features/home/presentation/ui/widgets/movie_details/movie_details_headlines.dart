import 'package:aqar_map_task/core/constants/app_constants.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieDetailsHeadlines extends StatelessWidget {
  const MovieDetailsHeadlines({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TabBar(
            automaticIndicatorColorAdjustment: true,
            indicatorColor: ColorManager.primaryLight,
            indicatorWeight: 4.sp,
            labelPadding: EdgeInsets.symmetric(horizontal: 0.sp),
            dividerColor: ColorManager.transparent,
            overlayColor: WidgetStateProperty.all(ColorManager.transparent),
            labelColor: ColorManager.black,
            unselectedLabelColor: ColorManager.black,
            labelStyle: getSemiBoldStyle(
              fontSize: 14.sp,
              color: ColorManager.black,
            ),
            unselectedLabelStyle: getRegularStyle(
              fontSize: 14.sp,
              color: ColorManager.black,
            ),
            tabs: AppConstants.movieDetailsTabs,
          ),
        ),
      ],
    );
  }
}
