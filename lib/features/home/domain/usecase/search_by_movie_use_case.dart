import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/domain/repository/movies_repository.dart';

import '../../../../core/network/api_result.dart';

class SearchByMovieUseCase {
  final MoviesRepository moviesRepository;

  SearchByMovieUseCase(this.moviesRepository);

  Future<ApiResult<List<MovieEntity>>> execute({ required String query}) async =>
      await moviesRepository.searchByMovie(query:  query);
}
