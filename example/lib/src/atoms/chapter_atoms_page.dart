import 'package:example/src/atoms/loading/chapter_loading_page.dart';
import 'package:example/src/gallery/chapter_gallery.dart';
import 'package:flutter/material.dart';

class ChapterAtomsPage extends StatelessWidget {
  const ChapterAtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ChapterGallery(title: 'loading', child: ChapterLoadingPage())
        ],
      ),
    );
  }
}
