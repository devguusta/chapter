import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ChapterCircularProgressIndicator extends StatelessWidget {
  final double? size;
  const ChapterCircularProgressIndicator({super.key, this.size = 16});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          context.chapterTheme.iconTheme.primary,
        ),
        backgroundColor: context.chapterTheme.iconTheme.invert,
      ),
    );
  }
}
