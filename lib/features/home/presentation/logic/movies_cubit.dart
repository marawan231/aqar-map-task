import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/domain/repository/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/enums/enums.dart';
part 'movies_state.dart';
part 'movies_cubit.freezed.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit(this.moviesRepository) : super(const _Initial());
  final MoviesRepository moviesRepository;

  Future<void> getPopularMovies() async {
    emit(state.copyWith(getPopularMoviesState: RequestState.loading));
    var result = await moviesRepository.getPopularMovies();

    result.when(
      success: (response) {
        emit(state.copyWith(
            getPopularMoviesState: RequestState.success,
            popularMovies: response));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(getPopularMoviesState: RequestState.error));
      },
    );
  }

  Future<void> getNowPlayingMovies() async {
    emit(state.copyWith(getNowPlayingMoviesState: RequestState.loading));
    var result = await moviesRepository.getNowPlayingMovies();

    result.when(
      success: (response) {
        emit(state.copyWith(
            getNowPlayingMoviesState: RequestState.success,
            nowPlayingMovies: response));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(getNowPlayingMoviesState: RequestState.error));
      },
    );
  }

  Future<void> getTopRatedMovies() async {
    emit(state.copyWith(getTopRatedMoviesState: RequestState.loading));
    var result = await moviesRepository.getTopRatedMovies();

    result.when(
      success: (response) {
        emit(state.copyWith(
            getTopRatedMoviesState: RequestState.success,
            topRatedMovies: response));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(getTopRatedMoviesState: RequestState.error));
      },
    );
  }

  Future<void> getUpcomingMovies() async {
    emit(state.copyWith(getUpcomingMoviesState: RequestState.loading));
    var result = await moviesRepository.getUpcomingMovies();

    result.when(
      success: (response) {
        emit(state.copyWith(
            getUpcomingMoviesState: RequestState.success,
            upcomingMovies: response));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(getUpcomingMoviesState: RequestState.error));
      },
    );
  }

  Future<void> searchMovies(String query) async {
    emit(state.copyWith(searchMoviesState: RequestState.loading));
    var result = await moviesRepository.searchByMovie(query: query);

    result.when(
      success: (response) {
        emit(state.copyWith(
            searchMoviesState: RequestState.success, searchedMovies: response));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(searchMoviesState: RequestState.error));
      },
    );
  }

  clearSearch() {
    emit(state.copyWith(
        searchMoviesState: RequestState.initial, searchedMovies: null));
  }

  //change selected tab
  changeSelectedTab(int index) {
    emit(state.copyWith(selectedTab: index));
  }
}
