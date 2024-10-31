import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

class HomeViewMoviesSuccess extends StatefulWidget {
  const HomeViewMoviesSuccess({super.key, required this.popularMovies});

  final List<MovieEntity> popularMovies;

  @override
  _HomeViewMoviesSuccessState createState() => _HomeViewMoviesSuccessState();
}

class _HomeViewMoviesSuccessState extends State<HomeViewMoviesSuccess> {
  late ScrollController _scrollController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final currentScrollPosition = _scrollController.position.pixels;
        final nextScrollPosition = currentScrollPosition + 150.sp;

        if (nextScrollPosition >= maxScrollExtent) {
          _scrollController.animateTo(0.0,
              duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        } else {
          _scrollController.animateTo(nextScrollPosition,
              duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.popularMovies.length,
        padding: EdgeInsetsDirectional.only(top: 20.sp),
        separatorBuilder: (context, index) => 8.horizontalSpace,
        itemBuilder: (context, index) {
          return HomeViewMoviesItem(
            movie: widget.popularMovies[index],
            index: index,
          );
        },
      ),
    );
  }
}
