import 'themes.dart';

abstract class ChapterTheme {
  ChapterTextTheme get textTheme;
  ChapterHeaderTheme get headerTheme;
  ChapterButtonTheme get buttonColors;
  ChapterCardTheme get cardTheme;
  ChapterBackgroundTheme get backgroundTheme;
  ChapterIconTheme get iconTheme;

  // Themes get theme;
}
