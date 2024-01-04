import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

abstract interface class ChapterCardTheme {
  Color get bgPrimary;
  Color get bgSecondary;
  Color get disabled;
  Color get background;
}

final class ChapterLightCardTheme implements ChapterCardTheme {
  @override
  Color get disabled => ChapterColors.neutral50;

  @override
  Color get bgSecondary => ChapterColors.primary50;

  @override
  Color get bgPrimary => ChapterColors.neutral50;
  @override
  Color get background => ChapterColors.white;
}

final class ChapterDarkCardTheme implements ChapterCardTheme {
  @override
  Color get disabled => ChapterColors.neutral700;

  @override
  Color get bgSecondary => ChapterColors.neutral400;

  @override
  Color get bgPrimary => ChapterColors.neutral500;

  @override
  Color get background => ChapterColors.black;
}
