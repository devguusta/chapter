import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

class ChapterLoadingPage extends StatelessWidget {
  const ChapterLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChapterCircularProgressIndicator(),
          ChapterCircularProgressIndicator(),
        ],
      ),
    );
  }
}
