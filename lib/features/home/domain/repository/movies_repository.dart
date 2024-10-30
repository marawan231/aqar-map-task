import 'package:aqar_map_task/core/network/api_result.dart';
import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';

abstract class MoviesRepository {
  Future<ApiResult<List<MovieEntity>>> getPopularMovies();

  Future<ApiResult<List<MovieEntity>>> getNowPlayingMovies();

  Future<ApiResult<List<MovieEntity>>> getTopRatedMovies();

  Future<ApiResult<List<MovieEntity>>> getUpcomingMovies();

  Future<ApiResult<List<MovieEntity>>> searchByMovie({ required String query});
}
