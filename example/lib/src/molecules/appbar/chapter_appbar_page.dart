import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

class ChapterAppBarPage extends StatelessWidget {
  const ChapterAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ChapterAppBar(
            title: 'ola',
            action: ChapterIconButtonSolid(
              icon: ChapterIcons.chevronLeft,
            ),
          ),
          ChapterAppBar(
            title: 'title',
            showBackButton: false,
          ),
          ChapterAppBar(
            title: 'ola',
            subTitle: 'teste',
          ),
          ChapterAppBar(
            title: 'ola',
            subTitle: 'teste',
            action: ChapterIconButtonSolid(
              icon: ChapterIcons.chevronLeft,
            ),
          ),
        ],
      ),
    );
  }
}
