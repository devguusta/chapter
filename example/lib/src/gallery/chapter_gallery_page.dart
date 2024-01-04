import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:example/src/atoms/chapter_atoms_page.dart';
import 'package:flutter/material.dart';

import '../molecules/chapter_molecule_page.dart';
import '../tokens/chapter_tokens_page.dart';
import 'chapter_gallery.dart';

class ChapterGalleryPage extends StatefulWidget {
  const ChapterGalleryPage({super.key});

  @override
  State<ChapterGalleryPage> createState() => _ChapterGalleryPageState();
}

class _ChapterGalleryPageState extends State<ChapterGalleryPage> {
  Themes currentTheme = Themes.light;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChapterThemeCubit, ChapterThemeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context.chapterTheme.backgroundTheme.background,
          appBar: const ChapterAppBar(title: 'Galeria de componentes'),
          body: const Column(
            children: [
              // ChapterGallery(
              //     title: 'Fundações', child: ChapterFoundationPage()),
              ChapterGallery(title: 'Tokens', child: ChapterTokensPage()),
              // ChapterGallery(
              //     title: 'Organismos', child: ChapterOrganismsPage()),
              ChapterGallery(title: 'Átomos', child: ChapterAtomsPage()),
              ChapterGallery(title: 'Moléculas', child: ChapterMoleculesPage()),
              // ChapterGallery(title: 'Páginas', child: ChapterPages()),
              // ChapterGallery(title: 'Templates', child: ChapterTemplatesPage()),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(ChapterSize.normal),
            child: ChapterButtonSolid(
              title: 'Alterar Tema',
              onPressed: () {
                context.read<ChapterThemeCubit>().updateTheme(
                      theme: currentTheme == Themes.light
                          ? Themes.dark
                          : Themes.light,
                    );
                currentTheme =
                    currentTheme == Themes.light ? Themes.dark : Themes.light;
              },
            ),
          ),
        );
      },
    );
  }
}
