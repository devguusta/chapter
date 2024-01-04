import 'package:chapter_design_system/src/foundations/themes/themes.dart';

class ChapterDarkTheme extends ChapterTheme {
  @override
  ChapterTextTheme get textTheme => ChapterTextDarkColorsTheme();

  @override
  ChapterBackgroundTheme get backgroundTheme => ChapterDarkBackgroundTheme();

  @override
  ChapterButtonTheme get buttonColors => ChapterDarkChapterButtonTheme();

  @override
  ChapterCardTheme get cardTheme => ChapterDarkCardTheme();

  @override
  ChapterHeaderTheme get headerTheme => DarkHeaderTheme();

  @override
  ChapterIconTheme get iconTheme => ChapterDarkIconTheme();
}
