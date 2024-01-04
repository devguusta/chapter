import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ChapterGallery extends StatelessWidget {
  final String title;
  final Widget child;

  const ChapterGallery({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: ChapterText(
            title,
            textStyle: const ChapterTextTypografies.displayH5(
                color: TextColor.secondary),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => child,
              ),
            );
          },
        ),
        Divider(
          thickness: 0.1,
          height: 1,
          color: context.chapterTheme.textTheme.primary,
        ),
      ],
    );
  }
}
