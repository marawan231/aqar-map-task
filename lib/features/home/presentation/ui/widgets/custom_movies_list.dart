import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/custom_movies_list_item.dart';
import 'package:flutter/material.dart';

class CustomMoviesList extends StatelessWidget {
  const CustomMoviesList({super.key, required this.movies});
  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 18,
        childAspectRatio: 0.7,
      ),
      padding: const EdgeInsets.only(bottom: 300, right: 16),
      itemBuilder: (BuildContext context, int index) {
        return CustomMoviesListItem(
          movie: movies[index],
        );
      },
      itemCount: movies.length,
    );
  }
}
