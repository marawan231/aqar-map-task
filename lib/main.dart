import 'package:aqar_map_task/app/app.dart';
import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/core/network/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    Bloc.observer = AppObserver();
    runApp(const MyApp());
  });
}
