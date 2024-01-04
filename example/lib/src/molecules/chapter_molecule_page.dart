import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:example/src/gallery/chapter_gallery.dart';
import 'package:example/src/molecules/appbar/chapter_appbar_page.dart';
import 'package:flutter/material.dart';

import 'buttons/button_solid_page.dart';

class ChapterMoleculesPage extends StatelessWidget {
  const ChapterMoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChapterScaffold(
      body: Column(
        children: [
          ChapterGallery(
              title: 'button solid', child: ChapterButtonSolidPage()),
          ChapterGallery(title: 'APPBAR ', child: ChapterAppBarPage())
        ],
      ),
    );
  }
}
