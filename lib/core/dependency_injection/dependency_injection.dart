import 'package:aqar_map_task/core/config/app_config.dart';
import 'package:aqar_map_task/core/helpers/secure_storage.dart';
import 'package:aqar_map_task/core/network/dio_setup.dart';
import 'package:aqar_map_task/features/home/data/datasource/movies_web_services.dart';
import 'package:aqar_map_task/features/home/data/repository/movies_repository_implementation.dart';
import 'package:aqar_map_task/features/home/domain/repository/movies_repository.dart';
import 'package:aqar_map_task/features/home/domain/usecase/get_popular_movies_use_case.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //dio setup
  getIt.registerLazySingleton<Dio>(() => setupDio());
  //SecureStorage
  getIt.registerLazySingleton<SecureStorage>(() => SecureStorage());
  //movies web service
  getIt.registerLazySingleton<MoviesWebServices>(
      () => MoviesWebServices(baseUrl: AppConfig.baseUrl, getIt<Dio>()));
  //movies repository
  getIt.registerLazySingleton<MoviesRepository>(
      () => MoviesRepositoryImplementation(getIt<MoviesWebServices>()));
  //getpopularmovies usecase
  getIt.registerLazySingleton<GetPopularMoviesUseCase>(
      () => GetPopularMoviesUseCase(getIt<MoviesRepository>()));
  //movies cubit
  getIt.registerLazySingleton<MoviesCubit>(() => MoviesCubit(getIt()));
}
