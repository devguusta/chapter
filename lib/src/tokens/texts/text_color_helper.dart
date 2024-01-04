import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../../../chapter_design_system.dart';

sealed class TextColorHelper {
  static Color setColor(
    BuildContext context, {
    required TextColor color,
  }) {
    return getColorByTheme(
      color: color,
      getColorByTheme: context.chapterTheme,
    );
  }

  static Color getColorByTheme({
    required TextColor color,
    required ChapterTheme getColorByTheme,
  }) {
    return switch (color) {
      TextColor.primary => getColorByTheme.textTheme.primary,
      TextColor.disabled => getColorByTheme.textTheme.disabled,
      TextColor.invert => getColorByTheme.textTheme.invert,
      TextColor.secondary => getColorByTheme.textTheme.secondary,
      TextColor.tertiary => getColorByTheme.textTheme.tertiary,
      TextColor.danger => getColorByTheme.textTheme.danger,
      TextColor.success => getColorByTheme.textTheme.success,
    };
  }
}
