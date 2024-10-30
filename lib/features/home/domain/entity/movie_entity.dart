import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String posterPath;
  //backdrop_path
  final String backdropPath;
  //overview
  final String overview;
  //original_title
  final String originalTitle;

  const MovieEntity(
      {required this.id,
      required this.posterPath,
      required this.backdropPath,
      required this.overview,
      required this.originalTitle});

  @override
  List<Object?> get props => [id, posterPath, backdropPath, overview];
}
