import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_kinds_tabs.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/home_view_movies_kinds_tabs_views.dart';
import 'package:flutter/material.dart';

class HomeViewMoviesKinds extends StatelessWidget {
  const HomeViewMoviesKinds({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DefaultTabController(
          length: 4,
          child: Column(
            children: [
              HomeViewMoviesKindsTabs(),
              HomeViewMoviesKindsTabsViews(),
            ],
          ),
        )
      ],
    );
  }
}
