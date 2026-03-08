// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TabItems extends StatefulWidget {
  const TabItems({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final double? width;
  final double? height;
  final String text;
  final bool isSelected;
  final Future Function() onTap;

  @override
  State<TabItems> createState() => _TabItemsState();
}

class _TabItemsState extends State<TabItems> {
  bool isHovering = false;

  double _getTextWidth(BuildContext context, TextStyle style) {
    final textPainter = TextPainter(
      text: TextSpan(text: widget.text, style: style),
      maxLines: 1,
      textDirection: Directionality.of(context),
    )..layout();

    return textPainter.size.width;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 19,
      fontWeight: widget.isSelected ? FontWeight.w600 : FontWeight.w500,
      color: Color(0xFF000000),
    );

    final underlineWidth = _getTextWidth(context, textStyle);

    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: InkWell(
        onTap: widget.onTap,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 22),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 00),
                style: textStyle,
                child: Text(widget.text),
              ),
              const SizedBox(height: 22.5),
              AnimatedContainer(
                duration: const Duration(milliseconds: 00),
                height: widget.isSelected
                    ? 3
                    : isHovering
                        ? 1
                        : 0,
                width: (widget.isSelected || isHovering) ? underlineWidth : 0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
