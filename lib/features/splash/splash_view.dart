import 'dart:async';
import 'package:aqar_map_task/core/navigator/named_routes.dart';
import 'package:aqar_map_task/core/resources/assets_manager.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Timer _timer;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 10.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 10.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  void _goNext() async {
    _timer.cancel();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    context.go(NamedRoutes.homeView.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.splashColor,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(AssetsManager.appLogo,
                  width: 150.sp, height: 150.sp)),
          Padding(
            padding: EdgeInsets.only(top: 160.sp),
            child: Align(
                alignment: Alignment.center,
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Text(
                        'عقارماب',
                        style: getBoldStyle(
                          fontSize: 44.sp,
                          color: ColorManager.white,
                        ),
                      )),
                )),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
