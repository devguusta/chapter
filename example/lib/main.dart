import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:example/src/gallery/chapter_gallery_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChapterThemeCubit>(
      create: (context) => ChapterThemeCubit(),
      child: MaterialApp(
        title: 'Chapter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ChapterGalleryPage(),
      ),
    );
  }
}
