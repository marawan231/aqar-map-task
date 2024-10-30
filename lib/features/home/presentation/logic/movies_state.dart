part of 'movies_cubit.dart';

@freezed
class MoviesState<T> with _$MoviesState<T> {
  const factory MoviesState({
    @Default(RequestState.initial) RequestState getPopularMoviesState,
    @Default(RequestState.initial) RequestState getNowPlayingMoviesState,
    @Default(RequestState.initial) RequestState getTopRatedMoviesState,
    @Default(RequestState.initial) RequestState getUpcomingMoviesState,
    @Default(RequestState.initial) RequestState searchMoviesState,
    List<MovieEntity>? popularMovies,
    List<MovieEntity>? nowPlayingMovies,
    List<MovieEntity>? topRatedMovies,
    List<MovieEntity>? upcomingMovies,
    List<MovieEntity>? searchedMovies,
    //selected tab
    @Default(0) int selectedTab,
  }) = _Initial;
}
