import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

abstract interface class ChapterHeaderTheme {
  Color get title;
  Color get subtitle;
  Color get icons;
  Color get background;
}

final class LightHeaderTheme implements ChapterHeaderTheme {
  @override
  Color get background => ChapterColors.primary;

  @override
  Color get icons => ChapterColors.white;

  @override
  Color get subtitle => ChapterColors.neutral150;

  @override
  Color get title => ChapterColors.white;
}

final class DarkHeaderTheme implements ChapterHeaderTheme {
  @override
  Color get background => ChapterColors.neutral700;

  @override
  Color get icons => ChapterColors.white;

  @override
  Color get subtitle => ChapterColors.neutral150;

  @override
  Color get title => ChapterColors.white;
}
