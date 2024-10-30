import 'package:aqar_map_task/core/utils/enums/enums.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/custom_movies_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewMoviesUpcoming extends StatelessWidget {
  const HomeViewMoviesUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      buildWhen: (previous, current) =>
          current.getUpcomingMoviesState == RequestState.success ||
          current.getUpcomingMoviesState == RequestState.loading,
      builder: (context, state) {
        return CustomMoviesList(
          movies: state.upcomingMovies ?? [],
        );
      },
    );
  }
}
