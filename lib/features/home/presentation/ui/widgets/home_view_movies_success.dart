import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewMoviesSuccess extends StatelessWidget {
  const HomeViewMoviesSuccess({super.key, required this.popularMovies});

  final List<MovieEntity> popularMovies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: popularMovies.length,
        padding: EdgeInsetsDirectional.only(top: 20.sp),
        separatorBuilder: (context, index) => 8.horizontalSpace,
        itemBuilder: (context, index) {
          return HomeViewMoviesItem(
            movie: popularMovies[index],
            index: index,
          );
        },
      ),
    );
  }
}
