import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

abstract interface class ChapterTextTheme {
  Color get primary;
  Color get awaysBlack;
  Color get secondary;
  Color get tertiary;
  Color get disabled;
  Color get invert;
  Color get success;
  Color get danger;
  Color get buttonPrimary;
  Color get awaysWhite;
}

final class ChapterTextLightColorsTheme extends ChapterTextTheme {
  @override
  Color get disabled => ChapterColors.neutral200;

  @override
  Color get invert => ChapterColors.white;

  @override
  Color get primary => ChapterColors.black;
  @override
  Color get secondary => ChapterColors.neutral400;

  @override
  Color get tertiary => ChapterColors.neutral300;

  @override
  Color get success => ChapterColors.green;

  @override
  Color get danger => ChapterColors.red;

  @override
  Color get buttonPrimary => ChapterColors.primary;

  @override
  Color get awaysWhite => ChapterColors.white;
  @override
  Color get awaysBlack => ChapterColors.black;
}

final class ChapterTextDarkColorsTheme extends ChapterTextTheme {
  @override
  Color get disabled => ChapterColors.neutral300;

  @override
  Color get invert => ChapterColors.black;

  @override
  Color get primary => ChapterColors.white;

  @override
  Color get secondary => ChapterColors.neutral150;

  @override
  Color get tertiary => ChapterColors.neutral200;

  @override
  Color get success => ChapterColors.green;

  @override
  Color get danger => ChapterColors.red;

  @override
  Color get buttonPrimary => ChapterColors.white;

  @override
  Color get awaysWhite => ChapterColors.white;

  @override
  Color get awaysBlack => ChapterColors.black;
}
