import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:aqar_map_task/features/home/presentation/ui/screens/home_view.dart';
import 'package:aqar_map_task/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'named_routes.dart';

//navigator key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class RouterGenerator {
  static final GoRouter router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: NamedRoutes.splash.routeName,
      routes: <RouteBase>[
        GoRoute(
            path: NamedRoutes.splash.routeName,
            name: NamedRoutes.splash.routeName,
            builder: (context, state) => const SplashView()),

        //home view
        GoRoute(
          path: NamedRoutes.homeView.routeName,
          name: NamedRoutes.homeView.routeName,
          builder: (context, state) => BlocProvider.value(
            value: getIt<MoviesCubit>(),
            child: const HomeView(),
          ),
        ),
      ]);
}
