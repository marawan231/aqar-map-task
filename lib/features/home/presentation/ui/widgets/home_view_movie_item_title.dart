import 'package:aqar_map_task/core/utils/styles/custom_styles.dart';
import 'package:flutter/material.dart';

class HomeViewMovieItemTitle extends StatelessWidget {
  const HomeViewMovieItemTitle({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -20,
      left: 0,
      child: Text(index.toString(),
          textAlign: TextAlign.start, style: CustomStyles.title),
    );
  }
}
