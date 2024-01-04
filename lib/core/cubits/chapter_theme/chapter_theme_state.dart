import '../../../src/foundations/themes/themes.dart';

base class ChapterThemeState {
  final Themes currentTheme;

  const ChapterThemeState({
    required this.currentTheme,
  });

  ChapterThemeState copyWith({
    Themes? theme,
  }) {
    return ChapterThemeState(
      currentTheme: theme ?? currentTheme,
    );
  }
}
