import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../../../chapter_design_system.dart';

class ChapterCardBalanceFlow extends StatelessWidget {
  final String title;
  final String balance;
  final bool isVisible;
  final bool isLoading;
  final bool hasError;
  final VoidCallback? onEyeTap;
  final VoidCallback? onError;

  const ChapterCardBalanceFlow({
    required this.title,
    required this.balance,
    this.isVisible = true,
    this.isLoading = false,
    this.hasError = false,
    this.onEyeTap,
    this.onError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: ChapterSize.xlarge,
        vertical: ChapterSize.normal,
      ),
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ChapterSize.small),
        color: context.chapterTheme.backgroundTheme.background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ChapterText(
                title,
                textStyle: const ChapterTextTypografies.subtitle02(
                  color: TextColor.secondary,
                ),
              ),
              ChapterText(
                isVisible ? balance : '********',
                textStyle: const ChapterTextTypografies.displayH2(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
