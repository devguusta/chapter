import 'package:chapter_design_system/core/cubits/chapter_theme/chapter_theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../src/foundations/themes/chapter_theme_enum.dart';

base class ChapterThemeCubit extends Cubit<ChapterThemeState> {
  ChapterThemeCubit()
      : super(
          ChapterThemeState(
            currentTheme: Themes.getDefaultTheme,
          ),
        );

  void updateTheme({
    required Themes theme,
  }) {
    emit(
      ChapterThemeState(
        currentTheme: theme,
      ),
    );
  }
}
