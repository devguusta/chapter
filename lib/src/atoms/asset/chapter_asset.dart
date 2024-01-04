import 'package:chapter_design_system/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChapterAsset extends StatefulWidget {
  const ChapterAsset(
    this.path, {
    super.key,
    this.fit,
    this.width,
    this.alignment = Alignment.center,
    this.color,
    this.height,
    this.placeholderBuilder,
    this.useDefaultColor = false,
  });
  final String path;
  final BoxFit? fit;
  final double? width;
  final AlignmentGeometry alignment;
  final Color? color;
  final double? height;
  final Widget Function(BuildContext)? placeholderBuilder;
  final bool useDefaultColor;

  @override
  State<ChapterAsset> createState() => _ChapterAssetState();
}

class _ChapterAssetState extends State<ChapterAsset> {
  @override
  Widget build(BuildContext context) {
    return widget.path.endsWith('svg')
        ? SvgPicture.asset(
            widget.path,
            key: widget.key,
            color: widget.useDefaultColor
                ? context.chapterTheme.iconTheme.primary
                : widget.color,
            width: widget.width,
            height: widget.height,
            fit: widget.fit ?? BoxFit.contain,
            alignment: widget.alignment,
            placeholderBuilder: widget.placeholderBuilder,
            package: 'chapter_design_system',
          )
        : Image.asset(
            widget.path,
            key: widget.key,
            fit: widget.fit,
            width: widget.width,
            alignment: widget.alignment,
            package: 'chapter_design_system',
          );
  }
}
