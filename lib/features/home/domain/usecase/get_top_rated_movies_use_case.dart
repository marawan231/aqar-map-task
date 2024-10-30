import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/domain/repository/movies_repository.dart';

import '../../../../core/network/api_result.dart';

class GetTopRatedMoviesUseCase {
  final MoviesRepository moviesRepository;

  GetTopRatedMoviesUseCase(this.moviesRepository);

  Future<ApiResult<List<MovieEntity>>> execute() async =>
      await moviesRepository.getTopRatedMovies();
}
