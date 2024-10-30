import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/core/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewHeadline extends StatelessWidget {
  const HomeViewHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsManager.homeViewHeadline,
      style: getSemiBoldStyle(
        fontSize: 18.sp,
        color: Colors.white,
      ),
    );
  }
}
