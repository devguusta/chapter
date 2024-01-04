import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

abstract interface class ChapterBackgroundTheme {
  Color get background;
}

final class ChapterLightBackgroundTheme implements ChapterBackgroundTheme {
  @override
  Color get background => ChapterColors.white;
}

final class ChapterDarkBackgroundTheme implements ChapterBackgroundTheme {
  @override
  Color get background => ChapterColors.black;
}
