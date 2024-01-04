import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

class ChapterButtonSolid extends StatelessWidget {
  static const standardState = ChapterButtonState.primary;

  final String title;
  final String? leadingIcon;
  final String? trailingIcon;
  final VoidCallback onPressed;

  final ChapterButtonState state;
  final bool isLoading;

  const ChapterButtonSolid({
    required this.title,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.state = standardState,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: state == ChapterButtonState.disabled || isLoading,
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: isLoading ? const Size.fromWidth(double.maxFinite) : null,
          padding: const EdgeInsets.symmetric(
            vertical: ChapterSize.middle,
            horizontal: ChapterSize.normal,
          ),
          backgroundColor: state.getSolidColors(context).$1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ChapterSize.small),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: ChapterSize.tinier),
                child: SizedBox(
                  height: ChapterSize.middle,
                  width: ChapterSize.middle,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      state.getSolidColors(context).$2,
                    ),
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChapterText(title,
                      textStyle: const ChapterTextTypografies.button02()),
                ],
              ),
      ),
    );
  }
}
