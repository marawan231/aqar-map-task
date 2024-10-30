// ignore_for_file: deprecated_member_use
import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/core/resources/assets_manager.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;

  const CustomNavigationBar({
    super.key,
    this.onTap,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: ,
      decoration: BoxDecoration(
        color: ColorManager.primary,
        border: Border(
          top: BorderSide(
              color: ColorManager.splashColor.withOpacity(.18), width: .1),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorManager.black.withOpacity(.25),
            offset: const Offset(0, 14.239130973815918),
            blurRadius: 41.76811599731445,
          ),
        ],
      ),
      child: ClipRRect(
        child: BottomNavigationBar(
          selectedLabelStyle: getMediumStyle(
            fontSize: 12.sp,
            color: ColorManager.splashColor,
          ),
          unselectedLabelStyle: getMediumStyle(
            fontSize: 12.sp,
            color: ColorManager.grey,
          ),

          // showSelectedLabels: ,
          backgroundColor: ColorManager.primary,
          currentIndex: getIt<MoviesCubit>().state.selectedTab,
          onTap: (index) {
            getIt<MoviesCubit>().changeSelectedTab(index);
            setState(() {});
          },
          unselectedItemColor: ColorManager.primaryDark,
          fixedColor: ColorManager.splashColor,
          items: _buildNavigationBarItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavigationBarItems() {
    return [
      _buildNavigationBarItem(
          getIt<MoviesCubit>().state.selectedTab == 0
              ? AssetsManager.navHome
              : AssetsManager.navHome,
          'Home',
          0),
      _buildNavigationBarItem(
          getIt<MoviesCubit>().state.selectedTab == 1
              ? AssetsManager.navSearch
              : AssetsManager.navSearch,
          'Search',
          1),
      _buildNavigationBarItem(
          getIt<MoviesCubit>().state.selectedTab == 2
              ? AssetsManager.navBookmark
              : AssetsManager.navBookmark,
          'Watchlist',
          2),
    ];
  }

  BottomNavigationBarItem _buildNavigationBarItem(
    String assetName,
    String label,
    int index,
  ) {
    return BottomNavigationBarItem(
      // backgroundColor: ColorManager.splashColor,
      icon: Padding(
        padding: EdgeInsets.only(bottom: 6.w),
        child: SvgPicture.asset(
          assetName,
          width: 22.sp,
          height: 22.sp,
          color: getIt<MoviesCubit>().state.selectedTab == index
              ? ColorManager.splashColor
              : ColorManager.primaryDark,
        ),
      ),
      label: label,
    );
  }
}
