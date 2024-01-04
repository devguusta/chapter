import 'package:chapter_design_system/core/cubits/chapter_theme/chapter_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class ChapterGlobalCubits {
  static List<BlocProvider> inject() {
    return [
      BlocProvider<ChapterThemeCubit>(
        create: (_) => ChapterThemeCubit(),
      ),
    ];
  }
}
