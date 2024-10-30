import 'package:aqar_map_task/features/home/domain/entity/movie_entity.dart';
import 'package:aqar_map_task/features/home/presentation/ui/widgets/movie_details/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieDetailsDialog {
  static void showDetails(BuildContext context, MovieEntity movie) {
    showGeneralDialog(
      context: context,

      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.85), // Set the barrier color
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 12.sp, end: 12.sp),
            child: Material(
              borderRadius: BorderRadius.circular(12.r),
              animationDuration: const Duration(milliseconds: 500),
              child: MovieDetails(
                movie: movie,
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 800),
    );
  }
}
