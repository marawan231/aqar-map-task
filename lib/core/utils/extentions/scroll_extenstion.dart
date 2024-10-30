import 'dart:developer';

import 'package:flutter/material.dart';

extension ScrollControllerExtensions on ScrollController {
  void onScrollEndsListener(final void Function() callback,
      {double offset = 0}) {
    addListener(() {
      log('----------------------------------------------------------------');

      final maxScroll = position.maxScrollExtent;
      final currentScroll = position.pixels - offset;
      if (currentScroll == maxScroll) {
        callback();
      }
    });
  }
}
