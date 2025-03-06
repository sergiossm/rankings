// Fade Blur Strategy
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rankings/ui_kit/src/animations/text_reveal_widget.dart';

class FadeBlurStrategy extends BaseAnimationStrategy {
  const FadeBlurStrategy({this.maxBlur = 8.0}) : super();

  final double maxBlur; // Make constructor const

  @override
  Widget buildAnimatedCharacter({
    required String character,
    required Animation<double> animation,
    TextStyle? style,
  }) {
    return ValueListenableBuilder<double>(
      valueListenable: animation,
      builder: (context, value, _) => Opacity(
        opacity: value,
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: (1 - value) * maxBlur,
            sigmaY: (1 - value) * maxBlur,
          ),
          child: Text(character, style: style),
        ),
      ),
    );
  }
}
