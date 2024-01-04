import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ChapterButtonSolidPage extends StatelessWidget {
  const ChapterButtonSolidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.chapterTheme.backgroundTheme.background,
      appBar: const ChapterAppBar(title: 'Chapter Button Solid'),
      body: Padding(
        padding: const EdgeInsets.all(ChapterSize.normal),
        child: Column(
          children: [
            ChapterButtonSolid(title: 'Teste', onPressed: () {}),
            const SizedBox(height: ChapterSize.normal),
            ChapterButtonSolid(
              title: 'Teste',
              onPressed: () {},
              state: ChapterButtonState.danger,
            ),
            const SizedBox(height: ChapterSize.normal),
            ChapterButtonSolid(
              title: 'Teste',
              onPressed: () {},
              state: ChapterButtonState.disabled,
            ),
            const SizedBox(height: ChapterSize.normal),
            Row(
              children: [
                Expanded(
                  child: ChapterButtonSolid(
                    title: 'Teste',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: ChapterSize.normal),
                Expanded(
                  child: ChapterButtonSolid(
                    title: 'Teste',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: ChapterSize.normal),
            ChapterButtonSolid(
              title: 'Teste',
              onPressed: () {},
              state: ChapterButtonState.disabled,
            ),
            const SizedBox(height: ChapterSize.normal),
            ChapterButtonSolid(title: 'Teste', onPressed: () {}),
            const SizedBox(height: ChapterSize.normal),
            ChapterButtonSolid(
              title: 'Teste',
              onPressed: () {},
              state: ChapterButtonState.danger,
            ),
            const SizedBox(height: ChapterSize.normal),
            ChapterButtonSolid(
              title: 'Teste',
              onPressed: () {},
              state: ChapterButtonState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
