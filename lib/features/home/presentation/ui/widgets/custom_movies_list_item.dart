import 'package:aqar_map_task/core/config/app_config.dart';
import 'package:aqar_map_task/core/widgets/custom_cached_image.dart';
import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMoviesListItem extends StatelessWidget {
  const CustomMoviesListItem({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          MovieDetailsDialog.showDetails(context, movie); 
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: CustomCachedImage(
            image: AppConfig.imageBaseUrl + movie.posterPath,
          ),
        ));
  }
}
