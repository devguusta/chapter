import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../chapter_design_system.dart';

enum ChapterButtonState {
  primary,
  danger,
  disabled;

  (Color primary, Color secondary, TextColor textColor) getSolidColors(
    BuildContext context,
  ) {
    switch (this) {
      case ChapterButtonState.primary:
        return (
          context.chapterTheme.buttonColors.primary,
          context.chapterTheme.textTheme.invert,
          TextColor.invert,
        );
      case ChapterButtonState.danger:
        return (
          context.chapterTheme.buttonColors.danger,
          context.chapterTheme.textTheme.invert,
          TextColor.invert,
        );
      case ChapterButtonState.disabled:
        return (
          context.chapterTheme.buttonColors.disabled,
          context.chapterTheme.textTheme.disabled,
          TextColor.disabled,
        );
    }
  }

  (Color primary, Color secondary, TextColor textColor) getOutlineColors(
    BuildContext context,
  ) {
    switch (this) {
      case ChapterButtonState.primary:
        return (
          ChapterColors.transparent,
          context.chapterTheme.buttonColors.primary,
          TextColor.primary,
        );
      case ChapterButtonState.danger:
        return (
          ChapterColors.transparent,
          context.chapterTheme.textTheme.danger,
          TextColor.danger,
        );
      case ChapterButtonState.disabled:
        return (
          ChapterColors.transparent,
          context.chapterTheme.textTheme.disabled,
          TextColor.disabled,
        );
    }
  }

  (Color primary, Color secondary, TextColor textColor) getGhostColors(
    BuildContext context,
  ) {
    switch (this) {
      case ChapterButtonState.primary:
        return (
          ChapterColors.transparent,
          context.chapterTheme.buttonColors.primary,
          TextColor.primary,
        );
      case ChapterButtonState.danger:
        return (
          ChapterColors.transparent,
          context.chapterTheme.textTheme.danger,
          TextColor.danger,
        );
      case ChapterButtonState.disabled:
        return (
          ChapterColors.transparent,
          context.chapterTheme.textTheme.disabled,
          TextColor.disabled,
        );
    }
  }
}
