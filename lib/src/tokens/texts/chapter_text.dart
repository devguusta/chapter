import 'package:chapter_design_system/src/tokens/texts/texts.dart';
import 'package:flutter/material.dart';

import '../../../core/fonts/chapter_fonts.dart';
import 'text_color_helper.dart';

class ChapterTextTypografies {
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final TextColor color;

  const ChapterTextTypografies._({
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.color,
  });

  const ChapterTextTypografies.displayH1({
    this.color = TextColor.primary,
  })  : fontSize = 28,
        fontWeight = FontWeight.w700,
        fontFamily = ChapterFonts.poppinsMedium;

  const ChapterTextTypografies.displayH2({
    this.color = TextColor.primary,
  })  : fontSize = 24,
        fontWeight = FontWeight.w600,
        fontFamily = ChapterFonts.poppinsMedium;

  const ChapterTextTypografies.displayH3({
    this.color = TextColor.primary,
  })  : fontSize = 20,
        fontWeight = FontWeight.w600,
        fontFamily = ChapterFonts.poppinsMedium;

  const ChapterTextTypografies.displayH4({
    this.color = TextColor.primary,
  })  : fontSize = 16,
        fontWeight = FontWeight.w600,
        fontFamily = ChapterFonts.poppinsMedium;

  const ChapterTextTypografies.displayH5({
    this.color = TextColor.primary,
  })  : fontSize = 16,
        fontWeight = FontWeight.w500,
        fontFamily = ChapterFonts.poppinsMedium;

  const ChapterTextTypografies.overline({
    this.color = TextColor.primary,
  })  : fontSize = 12,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.body01({
    this.color = TextColor.primary,
  })  : fontSize = 16,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.body02({
    this.color = TextColor.primary,
  })  : fontFamily = ChapterFonts.poppinsRegular,
        fontSize = 14,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.subtitle01({
    this.color = TextColor.primary,
  })  : fontSize = 16,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w500;

  const ChapterTextTypografies.subtitle02({
    this.color = TextColor.primary,
  })  : fontSize = 14,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w600;

  const ChapterTextTypografies.subtitle03({
    this.color = TextColor.primary,
  })  : fontSize = 10,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.label01({
    this.color = TextColor.primary,
  })  : fontSize = 16,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.label02({
    this.color = TextColor.primary,
  })  : fontSize = 14,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.label03({
    this.color = TextColor.primary,
  })  : fontSize = 12,
        fontFamily = ChapterFonts.poppinsRegular,
        fontWeight = FontWeight.w400;

  const ChapterTextTypografies.button01({
    this.color = TextColor.primary,
  })  : fontSize = 12,
        fontFamily = ChapterFonts.poppinsMedium,
        fontWeight = FontWeight.w600;

  const ChapterTextTypografies.button02({
    this.color = TextColor.primary,
  })  : fontSize = 16,
        fontFamily = ChapterFonts.poppinsMedium,
        fontWeight = FontWeight.w500;

  const ChapterTextTypografies.button03({
    this.color = TextColor.primary,
  })  : fontSize = 18,
        fontFamily = ChapterFonts.poppinsMedium,
        fontWeight = FontWeight.w500;

  TextStyle toTextStyle(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: TextColorHelper.setColor(context, color: color),
        package: 'chapter_design_system',
      );
}
