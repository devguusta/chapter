import 'package:chapter_design_system/src/foundations/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

enum Themes {
  defaultDeviceConfiguration,
  dark,
  light;

  ChapterTheme get getRelatedChapterTheme {
    switch (this) {
      case Themes.dark:
        return ChapterDarkTheme();
      case Themes.light:
        return ChapterLightTheme();
      case Themes.defaultDeviceConfiguration:
        return _getDefaultDeviceConfigurationIsDarkMode
            ? ChapterDarkTheme()
            : ChapterLightTheme();
    }
  }

  static Themes get getDefaultTheme => Themes.defaultDeviceConfiguration;

  static Themes getByType({
    required String? value,
  }) {
    if (value == null) {
      return getDefaultTheme;
    }

    return Themes.values.firstWhere((status) => status.toString() == value);
  }

  bool get _getDefaultDeviceConfigurationIsDarkMode {
    final brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    return brightness == Brightness.dark;
  }
}
