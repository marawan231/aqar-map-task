import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details_about_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieDetailsTabView extends StatelessWidget {
  const MovieDetailsTabView({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
          start: 12.sp, end: 0.sp, top: 24.sp, bottom: 16.sp),
      child: Row(
        children: [
          MovieDetailsAboutMovie(
            movie: movie,
          ),
        ],
      ),
    );
  }
}
