import 'package:flutter/material.dart';

class AppConstants {
  static const List<Widget> movieTabs = [
    Tab(
      height: 39,
      text: 'Now playing',
    ),
    Tab(
      height: 39,
      text: 'Upcoming',
    ),
    Tab(
      height: 39,
      text: 'Top rated',
    ),
    Tab(
      height: 39,
      text: 'Popular',
    ),
  ];
  static const List<Widget> movieDetailsTabs = [
    Tab(
      height: 39,
      text: 'About Movie',
    ),
    Tab(
      height: 39,
      text: 'Reviews',
    ),
    Tab(
      height: 39,
      text: 'Cast',
    ),
  ];
}
