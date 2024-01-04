import 'package:chapter_design_system/core/cubits/chapter_theme/chapter_theme_cubit.dart';
import 'package:chapter_design_system/src/foundations/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ChapterThemeExtension on BuildContext {
  ChapterThemeCubit get _getCubitInstance =>
      BlocProvider.of<ChapterThemeCubit>(this, listen: true);

  ChapterTheme get chapterTheme =>
      _getCubitInstance.state.currentTheme.getRelatedChapterTheme;
}
