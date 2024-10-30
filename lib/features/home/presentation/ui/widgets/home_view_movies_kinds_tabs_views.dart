import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_popular.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_top_rated.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_upcoming.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_now_playing_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewMoviesKindsTabsViews extends StatelessWidget {
  const HomeViewMoviesKindsTabsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(top: 20.sp),
          height: 500.sp,
          child: const TabBarView(
            children: [
              HomeViewNowPlayingMovies(),
              HomeViewMoviesUpcoming(),
              HomeViewMoviesTopRated(),
              HomeViewMoviesPopular(),
            ],
          ),
        ),
      ],
    );
  }
}
