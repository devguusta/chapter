import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ChapterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subTitle;
  final ChapterIconButtonSolid? action;
  final VoidCallback? onBack;
  final bool showBackButton;
  const ChapterAppBar({
    required this.title,
    this.showBackButton = true,
    this.subTitle,
    this.action,
    this.onBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.chapterTheme.headerTheme.background,
      automaticallyImplyLeading: false,
      titleSpacing: ChapterSize.none,
      leading: showBackButton
          ? Padding(
              padding: const EdgeInsets.all(ChapterSize.small),
              child: ChapterIconButtonSolid(
                state: ChapterIconButtonState.header,
                icon: ChapterIcons.chevronLeft,
                onPressed: () {
                  if (onBack != null) {
                    onBack!();
                    return;
                  }
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            )
          : const SizedBox.shrink(),
      centerTitle: true,
      elevation: ChapterSize.none,
      actions: action != null
          ? [
              Padding(
                padding: const EdgeInsets.only(right: ChapterSize.small),
                child: ChapterIconButtonSolid(
                  isLoading: action!.isLoading,
                  key: action!.key,
                  onPressed: action!.onPressed,
                  icon: action!.icon,
                  state: ChapterIconButtonState.header,
                ),
              ),
            ]
          : null,
      title: Column(
        children: [
          ChapterText(
            title,
            textStyle:
                const ChapterTextTypografies.button03(color: TextColor.primary),
          ),
          if (subTitle != null)
            ChapterText(
              subTitle!,
              textStyle: const ChapterTextTypografies.label02(
                color: TextColor.primary,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(ChapterSize.bigger);
}
