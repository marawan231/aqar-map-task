import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/core/utils/enums/enums.dart';
import 'package:aqar_map_task/core/widgets/base_remote_container.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/custom_movies_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewNowPlayingMovies extends StatefulWidget {
  const HomeViewNowPlayingMovies({super.key});

  @override
  State<HomeViewNowPlayingMovies> createState() =>
      _HomeViewNowPlayingMoviesState();
}

class _HomeViewNowPlayingMoviesState extends State<HomeViewNowPlayingMovies> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getIt<MoviesCubit>().state.nowPlayingMovies != null
          ? null
          : getIt<MoviesCubit>().getNowPlayingMovies();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      buildWhen: (previous, current) =>
          current.getNowPlayingMoviesState == RequestState.success ||
          current.getNowPlayingMoviesState == RequestState.loading,
      builder: (context, state) {
        return BaseRemoteWidget(
          requestState: state.getNowPlayingMoviesState,
          successWidget: CustomMoviesList(
            movies: state.nowPlayingMovies ?? [],
          ),
        );
      },
    );
  }
}
