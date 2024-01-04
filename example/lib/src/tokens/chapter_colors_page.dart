import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:flutter/material.dart';

class ChapterColorsPage extends StatelessWidget {
  const ChapterColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChapterScaffold(
      appBar: ChapterAppBar(
        title: 'Chapter Colors',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Primary'),
              tileColor: ChapterColors.primary,
            ),
            ListTile(
              title: Text('Primary50'),
              tileColor: ChapterColors.primary50,
            ),
            ListTile(
              title: Text('Primary100'),
              tileColor: ChapterColors.primary100,
            ),
            ListTile(
              title: Text('Primary300'),
              tileColor: ChapterColors.primary300,
            ),
            ListTile(
              title: Text('Primary350'),
              tileColor: ChapterColors.primary350,
            ),
            ListTile(
              title: Text('Primary400'),
              tileColor: ChapterColors.primary400,
            ),
            ListTile(
              title: Text('Accent'),
              tileColor: ChapterColors.accent,
            ),
            ListTile(
              title: Text('Accent50'),
              tileColor: ChapterColors.accent50,
            ),
            ListTile(
              title: Text('Accent100'),
              tileColor: ChapterColors.accent100,
            ),
            ListTile(
              title: Text('Accent300'),
              tileColor: ChapterColors.accent300,
            ),
            ListTile(
              title: Text('Accent400'),
              tileColor: ChapterColors.accent400,
            ),
            ListTile(
              title: Text('Red'),
              tileColor: ChapterColors.red,
            ),
            ListTile(
              title: Text('Red50'),
              tileColor: ChapterColors.red50,
            ),
            ListTile(
              title: Text('Red100'),
              tileColor: ChapterColors.red100,
            ),
            ListTile(
              title: Text('Red300'),
              tileColor: ChapterColors.red300,
            ),
            ListTile(
              title: Text('Red400'),
              tileColor: ChapterColors.red400,
            ),
            ListTile(
              title: Text('Orange'),
              tileColor: ChapterColors.orange,
            ),
            ListTile(
              title: Text('Orange50'),
              tileColor: ChapterColors.orange50,
            ),
            ListTile(
              title: Text('Orange100'),
              tileColor: ChapterColors.orange100,
            ),
            ListTile(
              title: Text('Orange300'),
              tileColor: ChapterColors.orange300,
            ),
            ListTile(
              title: Text('Orange400'),
              tileColor: ChapterColors.orange400,
            ),
            ListTile(
              title: Text('Green'),
              tileColor: ChapterColors.green,
            ),
            ListTile(
              title: Text('Green50'),
              tileColor: ChapterColors.green50,
            ),
            ListTile(
              title: Text('Green100'),
              tileColor: ChapterColors.green100,
            ),
            ListTile(
              title: Text('Green300'),
              tileColor: ChapterColors.green300,
            ),
            ListTile(
              title: Text('Green400'),
              tileColor: ChapterColors.green400,
            ),
            ListTile(
              title: Text('Blue'),
              tileColor: ChapterColors.blue,
            ),
            ListTile(
              title: Text('Blue50'),
              tileColor: ChapterColors.blue50,
            ),
            ListTile(
              title: Text('Blue100'),
              tileColor: ChapterColors.blue100,
            ),
            ListTile(
              title: Text('Blue300'),
              tileColor: ChapterColors.blue300,
            ),
            ListTile(
              title: Text('Blue400'),
              tileColor: ChapterColors.blue400,
            ),
            ListTile(
              title: Text('Yellow'),
              tileColor: ChapterColors.yellow,
            ),
            ListTile(
              title: Text('Yellow50'),
              tileColor: ChapterColors.yellow50,
            ),
            ListTile(
              title: Text('Yellow100'),
              tileColor: ChapterColors.yellow100,
            ),
            ListTile(
              title: Text('Yellow300'),
              tileColor: ChapterColors.yellow300,
            ),
            ListTile(
              title: Text('Yellow400'),
              tileColor: ChapterColors.yellow400,
            ),
            ListTile(
              title: Text('White'),
              tileColor: ChapterColors.white,
            ),
            ListTile(
              title: Text('Black'),
              tileColor: ChapterColors.black,
            ),
            ListTile(
              title: Text('Neutral50'),
              tileColor: ChapterColors.neutral50,
            ),
            ListTile(
              title: Text('Neutral100'),
              tileColor: ChapterColors.neutral100,
            ),
            ListTile(
              title: Text('Neutral150'),
              tileColor: ChapterColors.neutral150,
            ),
            ListTile(
              title: Text('Neutral200'),
              tileColor: ChapterColors.neutral200,
            ),
            ListTile(
              title: Text('Neutral300'),
              tileColor: ChapterColors.neutral300,
            ),
            ListTile(
              title: Text('Neutral400'),
              tileColor: ChapterColors.neutral400,
            ),
            ListTile(
              title: Text('Neutral500'),
              tileColor: ChapterColors.neutral500,
            ),
            ListTile(
              title: Text('Neutral700'),
              tileColor: ChapterColors.neutral700,
            ),
          ],
        ),
      ),
    );
  }
}
