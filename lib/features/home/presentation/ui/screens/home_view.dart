import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/widgets/custom_nav_bar.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_headline.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_kinds.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_list.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getIt<MoviesCubit>().getPopularMovies();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      appBar: AppBar(
        backgroundColor: ColorManager.transparent,
        centerTitle: false,
        forceMaterialTransparency: true,
        title: const HomeViewHeadline(),
      ),
      backgroundColor: ColorManager.primary,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 16.sp),
          child: const Column(
            children: [
              HomeViewSearchBar(),
              HomeViewMoviesList(),
              HomeViewMoviesKinds(),
            ],
          ),
        ),
      ),
    );
  }
}
