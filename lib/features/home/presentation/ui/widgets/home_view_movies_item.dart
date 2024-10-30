import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movie_item_image.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movie_item_title.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details_dialog.dart';
import 'package:flutter/material.dart';

class HomeViewMoviesItem extends StatelessWidget {
  const HomeViewMoviesItem(
      {super.key, required this.movie, required this.index});

  final MovieEntity movie;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MovieDetailsDialog.showDetails(context, movie);
      },
      child: Stack(
        children: [
          HomeViewMovieItemImage(image: movie.posterPath),
          HomeViewMovieItemTitle(index: index + 1),
        ],
      ),
    );
  }
}
