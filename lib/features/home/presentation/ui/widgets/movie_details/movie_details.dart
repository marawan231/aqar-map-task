import 'package:aqar_map_task/core/config/app_config.dart';
import 'package:aqar_map_task/core/widgets/custom_cached_image.dart';
import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 12.sp, end: 16.sp),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            ),
            child: CustomCachedImage(
              image: AppConfig.imageBaseUrl + movie.backdropPath,
              width: 315,
              height: 179,
              fit: BoxFit.fill,
            ),
          ),
        ),
        24.verticalSpace,
        MovieDetailsTabs(movie: movie),
      ],
    );
  }
}
