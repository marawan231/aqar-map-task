import 'package:aqar_map_task/core/network/api_result.dart';
import 'package:aqar_map_task/core/network/network_exceptions.dart';
import 'package:aqar_map_task/features/home/data/datasource/movies_web_services.dart';
import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/domain/repository/movies_repository.dart';

class MoviesRepositoryImplementation implements MoviesRepository {
  final MoviesWebServices moviesWebServices;

  MoviesRepositoryImplementation(this.moviesWebServices);

  @override
  Future<ApiResult<List<MovieEntity>>> getPopularMovies() async {
    try {
      var response = await moviesWebServices.getPopularMovies();
      List<MovieEntity> movies = [];
      for (var movie in response.results!) {
        movies.add(MovieEntity(
          id: movie.id!,
          posterPath: movie.posterPath!,
          backdropPath: movie.backdropPath!,
          overview: movie.overview!,
          originalTitle: movie.originalTitle!,
        ));
      }

      return ApiResult.success(movies);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  @override
  Future<ApiResult<List<MovieEntity>>> getNowPlayingMovies() async {
    try {
      var response = await moviesWebServices.getNowPlayingMovies();
      List<MovieEntity> movies = [];
      for (var movie in response.results!) {
        movies.add(MovieEntity(
          id: movie.id!,
          posterPath: movie.posterPath!,
          backdropPath: movie.backdropPath!,
          overview: movie.overview!,
          originalTitle: movie.originalTitle!,
        ));
      }

      return ApiResult.success(movies);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  @override
  Future<ApiResult<List<MovieEntity>>> getTopRatedMovies() async {
    try {
      var response = await moviesWebServices.getTopRatedMovies();
      List<MovieEntity> movies = [];
      for (var movie in response.results!) {
        movies.add(MovieEntity(
          id: movie.id!,
          posterPath: movie.posterPath!,
          backdropPath: movie.backdropPath!,
          overview: movie.overview!,
          originalTitle: movie.originalTitle!,
        ));
      }

      return ApiResult.success(movies);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  @override
  Future<ApiResult<List<MovieEntity>>> getUpcomingMovies() async {
    try {
      var response = await moviesWebServices.getUpcomingMovies();
      List<MovieEntity> movies = [];
      for (var movie in response.results!) {
        movies.add(MovieEntity(
          id: movie.id!,
          posterPath: movie.posterPath!,
          backdropPath: movie.backdropPath!,
          overview: movie.overview!,
          originalTitle: movie.originalTitle!,
        ));
      }

      return ApiResult.success(movies);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  @override
  Future<ApiResult<List<MovieEntity>>> searchByMovie(
      {required String query}) async {
    try {
      var response = await moviesWebServices.searchMovies(query);
      List<MovieEntity> movies = [];
      for (var movie in response.results!) {
        movies.add(MovieEntity(
          id: movie.id ?? 0,
          posterPath: movie.posterPath ?? '',
          backdropPath: movie.backdropPath ?? '',
          overview: movie.overview ?? '',
          originalTitle: movie.originalTitle ?? '',
        ));
      }

      return ApiResult.success(movies);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
