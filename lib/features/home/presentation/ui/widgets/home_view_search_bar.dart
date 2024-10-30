import 'package:aqar_map_task/core/dependency_injection/dependency_injection.dart';
import 'package:aqar_map_task/core/resources/color_manager.dart';
import 'package:aqar_map_task/core/resources/custom_text_styles.dart';
import 'package:aqar_map_task/core/utils/styles/custom_styles.dart';
import 'package:aqar_map_task/features/home/presentation/logic/movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewSearchBar extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final Function()? onTap;
  const HomeViewSearchBar(
      {super.key,
      this.onChanged,
      this.onSubmit,
      this.onTap,
      this.controller,
      this.hintText});

  @override
  State<HomeViewSearchBar> createState() => _HomeViewSearchBarState();
}

class _HomeViewSearchBarState extends State<HomeViewSearchBar> {
  final TextEditingController controller = TextEditingController();
  final BehaviorSubject<String> _searchSubject = BehaviorSubject<String>();

  @override
  void initState() {
    super.initState();
    _searchSubject
        .debounceTime(const Duration(milliseconds: 500))
        .listen((query) {
      _sendApiRequest(query);
    });
  }

  @override
  void dispose() {
    _searchSubject.close();
    controller.dispose();
    super.dispose();
  }

  void _sendApiRequest(String query) {
    query.isEmpty
        ? getIt<MoviesCubit>().clearSearch()
        : getIt<MoviesCubit>().searchMovies(query);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 16.sp),
      child: SizedBox(
        height: 46.sp,
        child: TextFormField(
            style: getSemiBoldStyle(
              color: ColorManager.white,
              fontSize: 14.sp,
            ),
            enabled: true,
            controller: widget.controller,
            onChanged: (value) {
              _searchSubject.add(value);
            },
            onFieldSubmitted: (value) {
              _sendApiRequest(value);
            },
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            decoration: CustomStyles.customDecoration),
      ),
    );
  }
}
