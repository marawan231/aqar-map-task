import 'package:aqar_map_task/core/constants/app_constants.dart';
import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewMoviesKindsTabs extends StatelessWidget {
  const HomeViewMoviesKindsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TabBar(
            onTap: _handleOnTap,
            automaticIndicatorColorAdjustment: true,
            indicatorColor: ColorManager.primaryLight,
            indicatorWeight: 4.sp,
            labelPadding: EdgeInsets.symmetric(horizontal: 0.sp),
            dividerColor: ColorManager.transparent,
            overlayColor: WidgetStateProperty.all(ColorManager.transparent),
            labelColor: ColorManager.white,
            unselectedLabelColor: ColorManager.white,
            labelStyle: getSemiBoldStyle(
              fontSize: 14.sp,
              color: ColorManager.black,
            ),
            unselectedLabelStyle: getSemiBoldStyle(
              fontSize: 14.sp,
              color: ColorManager.white,
            ),
            tabs: AppConstants.movieTabs,
          ),
        ),
      ],
    );
  }

  _handleOnTap(int index) {
    switch (index) {
      case 0:
        getIt<MoviesCubit>().state.nowPlayingMovies?.isNotEmpty ?? false
            ? null
            : getIt<MoviesCubit>().getNowPlayingMovies();

        // print('Popular');
        break;
      case 1:
        getIt<MoviesCubit>().state.upcomingMovies?.isNotEmpty ?? false
            ? null
            : getIt<MoviesCubit>().getUpcomingMovies();

        break;
      case 2:
        getIt<MoviesCubit>().state.topRatedMovies?.isNotEmpty ?? false
            ? null
            : getIt<MoviesCubit>().getTopRatedMovies();
        break;
      case 3:
        getIt<MoviesCubit>().state.popularMovies?.isNotEmpty ?? false
            ? null
            : getIt<MoviesCubit>().getPopularMovies();
        // print('Now Playing');
        break;
      default:
    }
  }
}
