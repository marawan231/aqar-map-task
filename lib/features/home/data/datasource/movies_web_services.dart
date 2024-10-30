import 'package:aqar_map_task/features/home/data/model/movies_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_web_services.g.dart';

@RestApi()
abstract class MoviesWebServices {
  factory MoviesWebServices(Dio dio, {String baseUrl}) = _MoviesWebServices;

  @GET('3/movie/popular')
  Future<MoviesResponse> getPopularMovies();

  @GET('3/movie/now_playing')
  Future<MoviesResponse> getNowPlayingMovies();

  @GET('3/movie/top_rated')
  Future<MoviesResponse> getTopRatedMovies();

  @GET('3/movie/upcoming')
  Future<MoviesResponse> getUpcomingMovies();
  //search by movie
  @GET('3/search/movie')
  Future<MoviesResponse> searchMovies(@Query('query') String query);
}
