import 'package:aqar_map_task/core/constants/app_screen_sizes.dart';
import 'package:aqar_map_task/core/internet/internet_connection_checker.dart';
import 'package:aqar_map_task/core/navigator/route_generator.dart';
import 'package:aqar_map_task/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(ScreenSizes.width, ScreenSizes.height),
        minTextAdapt: true,
        splitScreenMode: true,
        ensureScreenSize: true,
        useInheritedMediaQuery: true,
        builder: (context, child) => MaterialApp.router(
              routerConfig: RouterGenerator.router,
              debugShowCheckedModeBanner: false,
              theme: appTheme,
              title: 'Aaqar Map Task',
              builder: (context, child) {
                return InternetConnectionChecker(
                  child: MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: child!,
                  ),
                );
              },
            ));
  }
}
