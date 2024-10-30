import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.signal_wifi_off,
              size: 120,
              color: Colors.grey[400],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'No Internet Connection',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )),
            // Container(
            //     margin: const EdgeInsets.only(top: 10),
            //     child: Text(
            //       'تأكد من اتصالك بالانترنت',
            //       style: TextStyle(
            //           fontSize: 18,
            //           color: Colors.grey[400],
            //           fontWeight: FontWeight.w400),
            //     )),
            // Container(
            //     margin: const EdgeInsets.only(top: 10),
            //     child: Text(
            //       'اعد الاتصال بالانترنت',
            //       style: TextStyle(
            //           fontSize: 18,
            //           color: Colors.grey[400],
            //           fontWeight: FontWeight.w400),
            //     )),
            Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
                child: Builder(
                    builder: (context) => ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            foregroundColor: Theme.of(context).primaryColor,
                            side: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          child: Container(
                              alignment: Alignment.center,
                              child: Text('check internet connection',
                                  style: getBoldStyle(
                                      fontSize: 20.sp,
                                      color: ColorManager.white))),
                        )))
          ],
        )));
  }
}
