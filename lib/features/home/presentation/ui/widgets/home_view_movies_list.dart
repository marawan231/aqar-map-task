import 'package:aqar_map_task/core/utils/enums/enums.dart';
import 'package:aqar_map_task/core/widgets/base_remote_container.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewMoviesList extends StatelessWidget {
  const HomeViewMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      buildWhen: (previous, current) =>
          current.getPopularMoviesState == RequestState.success ||
          current.getPopularMoviesState == RequestState.loading ||
          current.searchMoviesState == RequestState.loading ||
          current.searchMoviesState == RequestState.success,
      builder: (context, state) {
        // log('HomeViewMoviesList: ${state.searchedMovies}');
        return BaseRemoteWidget(
            requestState: state.getPopularMoviesState,
            successWidget: HomeViewMoviesSuccess(
                popularMovies: (state.searchedMovies != null &&
                        state.searchedMovies!.isNotEmpty)
                    ? state.searchedMovies ?? []
                    : state.popularMovies ?? []));
      },
    );
  }
}
