import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../../../chapter_design_system.dart';

enum ChapterIconButtonState {
  primary,
  danger,
  success,
  header,
  disabled;

  ({Color primary, Color secondary}) getSolidColors(
    BuildContext context,
  ) {
    switch (this) {
      case ChapterIconButtonState.primary:
        return (
          primary: context.chapterTheme.buttonColors.primary,
          secondary: context.chapterTheme.textTheme.invert,
        );
      case ChapterIconButtonState.danger:
        return (
          primary: context.chapterTheme.buttonColors.danger,
          secondary: context.chapterTheme.textTheme.invert,
        );
      case ChapterIconButtonState.success:
        return (
          primary: context.chapterTheme.buttonColors.success,
          secondary: context.chapterTheme.textTheme.invert,
        );
      case ChapterIconButtonState.disabled:
        return (
          primary: context.chapterTheme.buttonColors.disabled,
          secondary: context.chapterTheme.textTheme.invert,
        );
      case ChapterIconButtonState.header:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.headerTheme.icons,
        );
    }
  }

  ({Color primary, Color secondary}) getOutlineColors(
    BuildContext context,
  ) {
    switch (this) {
      case ChapterIconButtonState.primary:
        return (
          primary: context.chapterTheme.buttonColors.primary,
          secondary: ChapterColors.transparent,
        );
      case ChapterIconButtonState.danger:
        return (
          primary: context.chapterTheme.buttonColors.danger,
          secondary: ChapterColors.transparent,
        );
      case ChapterIconButtonState.success:
        return (
          primary: context.chapterTheme.buttonColors.success,
          secondary: ChapterColors.transparent,
        );
      case ChapterIconButtonState.disabled:
        return (
          primary: context.chapterTheme.buttonColors.disabled,
          secondary: ChapterColors.transparent,
        );
      case ChapterIconButtonState.header:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.headerTheme.icons,
        );
    }
  }

  ({Color primary, Color secondary}) getGhostColors(
    BuildContext context,
  ) {
    switch (this) {
      case ChapterIconButtonState.primary:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.buttonColors.primary,
        );
      case ChapterIconButtonState.danger:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.textTheme.danger,
        );
      case ChapterIconButtonState.success:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.buttonColors.success,
        );
      case ChapterIconButtonState.disabled:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.textTheme.disabled,
        );
      case ChapterIconButtonState.header:
        return (
          primary: ChapterColors.transparent,
          secondary: context.chapterTheme.headerTheme.icons,
        );
    }
  }
}
