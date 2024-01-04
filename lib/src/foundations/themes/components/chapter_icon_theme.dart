import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

abstract interface class ChapterIconTheme {
  Color get primary;
  Color get secondary;
  Color get disabled;
  Color get invert;
}

final class ChapterLightIconTheme implements ChapterIconTheme {
  @override
  Color get primary => ChapterColors.primary350;

  @override
  Color get secondary => ChapterColors.primary300;

  @override
  Color get disabled => ChapterColors.neutral200;

  @override
  Color get invert => ChapterColors.neutral150;
}

final class ChapterDarkIconTheme implements ChapterIconTheme {
  @override
  Color get disabled => ChapterColors.neutral300;

  @override
  Color get secondary => ChapterColors.neutral150;

  @override
  Color get primary => ChapterColors.neutral200;

  @override
  Color get invert => ChapterColors.black;
}
