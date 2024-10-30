import 'package:json_annotation/json_annotation.dart';

part 'movies_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MoviesResponse {
  int? page;
  List<Results>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  MoviesResponse({this.page, this.results, this.totalPages, this.totalResults});

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Results {
  // String? backdropPath;
  int? id;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  //overview
  String? overview;
  //backdrop_path
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  //original_title
  @JsonKey(name: 'original_title')
  String? originalTitle;

  Results({
    this.id,
    this.posterPath,
    this.overview,
    this.backdropPath,
    this.originalTitle,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
