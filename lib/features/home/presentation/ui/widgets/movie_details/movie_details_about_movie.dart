import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieDetailsAboutMovie extends StatelessWidget {
  const MovieDetailsAboutMovie({super.key, required this.movie});

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 315.sp,
          child: Text(movie.originalTitle,
              style: getSemiBoldStyle(fontSize: 18.sp)),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 315.sp,
          child: Padding(
            padding: EdgeInsets.only(right: 8.sp),
            child: Text(
              movie.overview,
              style: getRegularStyle(
                  fontSize: 14.sp, color: ColorManager.grey, height: 1.7.sp),
            ),
          ),
        ),
      ],
    );
  }
}
