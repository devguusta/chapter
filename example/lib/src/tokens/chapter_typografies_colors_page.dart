import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ChapterTypographyColorsPage extends StatelessWidget {
  const ChapterTypographyColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChapterScaffold(
      appBar: ChapterAppBar(
        title: 'Chapter Typography',
        action: ChapterIconButtonSolid(
          icon: ChapterIcons.chevronLeft,
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var color in _typographies.keys) ...[
              Card(
                color: context.chapterTheme.cardTheme.bgSecondary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChapterText(
                    'Color: ${color.name} - Size - Weight',
                    textStyle: const ChapterTextTypografies.displayH3(),
                  ),
                ),
              ),
              for (var e in _typographies[color]!)
                ChapterText(
                  '${e.$1} - ${e.$2.fontSize} - ${e.$2.fontWeight.value}',
                  textStyle: e.$2,
                ),
              const SizedBox(height: ChapterSize.normal),
              const SizedBox(height: ChapterSize.normal),
            ],
          ],
        ),
      ),
    );
  }
}

Map<TextColor, List<(String name, ChapterTextTypografies typography)>>
    get _typographies {
  final map =
      <TextColor, List<(String name, ChapterTextTypografies typography)>>{};
  for (var color in TextColor.values) {
    map[color] = [];
    map[color]
        ?.add(('displayH1', ChapterTextTypografies.displayH1(color: color)));
    map[color]
        ?.add(('displayH2', ChapterTextTypografies.displayH2(color: color)));
    map[color]
        ?.add(('displayH3', ChapterTextTypografies.displayH3(color: color)));
    map[color]
        ?.add(('displayH4', ChapterTextTypografies.displayH4(color: color)));
    map[color]
        ?.add(('displayH5', ChapterTextTypografies.displayH5(color: color)));
    map[color]
        ?.add(('overline', ChapterTextTypografies.overline(color: color)));
    map[color]?.add(('body01', ChapterTextTypografies.body01(color: color)));
    map[color]?.add(('body02', ChapterTextTypografies.body02(color: color)));
    map[color]
        ?.add(('subtitle01', ChapterTextTypografies.subtitle01(color: color)));
    map[color]
        ?.add(('subtitle02', ChapterTextTypografies.subtitle02(color: color)));
    map[color]
        ?.add(('subtitle03', ChapterTextTypografies.subtitle03(color: color)));
    map[color]?.add(('label01', ChapterTextTypografies.label01(color: color)));
    map[color]?.add(('label02', ChapterTextTypografies.label02(color: color)));
    map[color]?.add(('label03', ChapterTextTypografies.label03(color: color)));
    map[color]
        ?.add(('button01', ChapterTextTypografies.button01(color: color)));
    map[color]
        ?.add(('button02', ChapterTextTypografies.button02(color: color)));
    map[color]
        ?.add(('button03', ChapterTextTypografies.button03(color: color)));
  }
  return map;
}
