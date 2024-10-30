import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details_headlines.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details_tab_view.dart';
import 'package:flutter/material.dart';

class MovieDetailsTabs extends StatelessWidget {
  const MovieDetailsTabs({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const MovieDetailsHeadlines(),
              MovieDetailsTabView(
                movie: movie,
              ),
            ],
          ),
        )
      ],
    );
  }
}
