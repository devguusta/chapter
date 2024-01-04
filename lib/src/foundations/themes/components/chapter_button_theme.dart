import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

abstract interface class ChapterButtonTheme {
  Color get primary;
  Color get disabled;
  Color get danger;
  Color get success;
}

final class ChapterLightChapterButtonTheme implements ChapterButtonTheme {
  @override
  Color get danger => ChapterColors.red;

  @override
  Color get disabled => ChapterColors.neutral100;

  @override
  Color get primary => ChapterColors.primary;

  @override
  Color get success => ChapterColors.green;
}

final class ChapterDarkChapterButtonTheme implements ChapterButtonTheme {
  @override
  Color get danger => ChapterColors.red;
  @override
  Color get disabled => ChapterColors.neutral600;

  @override
  Color get primary => ChapterColors.primary50;

  @override
  Color get success => ChapterColors.green;
}
