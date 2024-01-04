import 'package:chapter_design_system/src/foundations/themes/themes.dart';

class ChapterLightTheme extends ChapterTheme {
  @override
  ChapterTextTheme get textTheme => ChapterTextLightColorsTheme();
  @override
  ChapterBackgroundTheme get backgroundTheme => ChapterLightBackgroundTheme();

  @override
  ChapterButtonTheme get buttonColors => ChapterLightChapterButtonTheme();

  @override
  ChapterCardTheme get cardTheme => ChapterLightCardTheme();

  @override
  ChapterHeaderTheme get headerTheme => LightHeaderTheme();

  @override
  ChapterIconTheme get iconTheme => ChapterLightIconTheme();
}
