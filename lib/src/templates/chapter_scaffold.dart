import 'package:chapter_design_system/chapter_design_system.dart';
import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ChapterScaffold extends StatelessWidget {
  const ChapterScaffold({
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.showAccountBalance = false,
    this.isScrollable = false,
    this.showLimitAvailable = false,
    this.resizeToAvoidBottomInset = false,
    this.bottomSheet,
    super.key,
  });

  final Widget? body;
  final Widget? bottomNavigationBar;

  final ChapterAppBar? appBar;
  final bool showAccountBalance;
  final bool showLimitAvailable;

  final bool isScrollable;
  final bool resizeToAvoidBottomInset;
  final Widget? bottomSheet;

  @override
  Widget build(BuildContext context) {
    const balanceWithPadding = Padding(
      padding: EdgeInsets.symmetric(
        vertical: ChapterSize.xlarge,
        horizontal: ChapterSize.normal,
      ),
      child: ChapterCardBalanceFlow(
        title: 'Saldo em conta',
        balance: 'R\$ 150,00',
      ),
    );

    return ColoredBox(
      color: context.chapterTheme.backgroundTheme.background,
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Theme(
            data: ThemeData(
              bottomSheetTheme: BottomSheetThemeData(
                backgroundColor:
                    context.chapterTheme.backgroundTheme.background,
              ),
            ),
            child: Scaffold(
              backgroundColor: context.chapterTheme.backgroundTheme.background,
              bottomNavigationBar: bottomNavigationBar,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
              appBar: appBar,
              body: isScrollable
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          balanceWithPadding,
                          if (body != null) body!,
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        balanceWithPadding,
                        if (body != null) Expanded(child: body!),
                      ],
                    ),
              bottomSheet: bottomSheet,
            ),
          ),
        ),
      ),
    );
  }
}
