import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

class ChapterText extends StatelessWidget {
  final ChapterTextTypografies textStyle;
  final String text;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final bool hasHyphenation;
  final bool hasMarkdown;

  const ChapterText(
    this.text, {
    required this.textStyle,
    this.maxLines,
    this.textOverflow,
    this.textAlign,
    this.hasHyphenation = false,
    this.hasMarkdown = false,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final currentTextStyle = textStyle.toTextStyle(context);

    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: currentTextStyle,
    );
  }
}
