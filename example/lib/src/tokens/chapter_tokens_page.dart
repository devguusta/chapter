import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:example/src/gallery/chapter_gallery.dart';
import 'package:example/src/tokens/chapter_colors_page.dart';
import 'package:flutter/material.dart';

import 'chapter_typografies_colors_page.dart';

class ChapterTokensPage extends StatelessWidget {
  const ChapterTokensPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChapterScaffold(
      appBar: ChapterAppBar(title: 'tokens'),
      body: Column(
        children: [
          ChapterGallery(title: 'colors', child: ChapterColorsPage()),
          ChapterGallery(
              title: 'typografies', child: ChapterTypographyColorsPage())
        ],
      ),
    );
  }
}
