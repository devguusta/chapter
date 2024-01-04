import 'package:flutter/material.dart';

import '../../../chapter_design_system.dart';

class ChapterIconButtonSolid extends StatelessWidget {
  final VoidCallback? onPressed;
  final String icon;

  final ChapterIconButtonState state;
  final bool isLoading;
  final Color? iconColor;

  const ChapterIconButtonSolid({
    required this.icon,
    this.onPressed,
    this.state = ChapterIconButtonState.primary,
    this.isLoading = false,
    this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(ChapterSize.tiny),
        onTap: isLoading ? null : onPressed,
        child: Ink(
          padding: const EdgeInsets.all(ChapterSize.small),
          decoration: BoxDecoration(
            color: state.getSolidColors(context).primary,
            borderRadius: BorderRadius.circular(ChapterSize.tiny),
          ),
          child: isLoading
              ? const Align(
                  child: ChapterCircularProgressIndicator(),
                )
              : ChapterAsset(
                  icon,
                  color: iconColor ?? state.getSolidColors(context).secondary,
                  height: ChapterSize.normal,
                  width: ChapterSize.normal,
                ),
        ),
      ),
    );
  }
}
