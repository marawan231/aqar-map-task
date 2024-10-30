import 'package:aqar_map_task/core/config/app_config.dart';
import 'package:aqar_map_task/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewMovieItemImage extends StatelessWidget {
  const HomeViewMovieItemImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 230.sp,
          width: 170.sp,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: SizedBox(
                  height: 210.sp,
                  width: 145.sp,
                  // color: Colors.red,
                  child: CustomCachedImage(
                    image: AppConfig.imageBaseUrl + image,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
