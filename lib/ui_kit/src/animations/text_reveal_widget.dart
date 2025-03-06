import 'package:flutter/material.dart';
import 'package:rankings/ui_kit/src/animations/fade_blur_strategy.dart';

abstract class TextAnimationStrategy {
  const TextAnimationStrategy({
    this.synchronizeAnimation = false,
  });
  final bool synchronizeAnimation;

  Widget buildAnimatedCharacter({
    required String character,
    required Animation<double> animation,
    TextStyle? style,
  });

  Animation<double> createAnimation({
    required AnimationController controller,
    required double startTime,
    required double endTime,
    required Curve curve,
  });
}

// Base Animation Strategy
class BaseAnimationStrategy extends TextAnimationStrategy {
  const BaseAnimationStrategy({
    super.synchronizeAnimation,
  });

  @override
  Widget buildAnimatedCharacter({
    required String character,
    required Animation<double> animation,
    TextStyle? style,
  }) {
    return ValueListenableBuilder<double>(
      valueListenable: animation,
      builder: (context, value, _) => Text(character, style: style),
    );
  }

  @override
  Animation<double> createAnimation({
    required AnimationController controller,
    required double startTime,
    required double endTime,
    required Curve curve,
  }) {
    return Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(startTime, endTime, curve: curve),
      ),
    );
  }
}

// Animation Direction
enum AnimationDirection {
  forward,
  reverse,
}

// Animation Unit
enum AnimationUnit {
  character,
  word,
}

// Enhanced Animation Manager
class EnhancedTextAnimationManager {
  EnhancedTextAnimationManager({
    required this.controller,
    required this.text,
    required this.curve,
    required this.strategy,
    this.unit = AnimationUnit.character,
  }) {
    _units = _splitTextIntoUnits();
    _initializeAnimations();
  }
  final AnimationController controller;
  final String text;
  final Curve curve;
  final AnimationUnit unit;
  final TextAnimationStrategy strategy;

  late final List<Animation<double>> _animations;
  late final List<String> _units;

  List<String> _splitTextIntoUnits() {
    switch (unit) {
      case AnimationUnit.character:
        return text.split('');
      case AnimationUnit.word:
        // Early return for empty text
        if (text.isEmpty) return [];

        // Split text keeping spaces with words
        final words = <String>[];
        final pattern = RegExp(r'\S+\s*');

        for (final match in pattern.allMatches(text)) {
          words.add(match.group(0)!);
        }

        return words;
    }
  }

  void _initializeAnimations() {
    if (_units.isEmpty) {
      _animations = [];
      return;
    }

    const animationDuration = 0.8;
    const totalAnimationTime = 1.0 + animationDuration;

    if (strategy.synchronizeAnimation) {
      // When synchronized, all characters use the same timing
      _animations = List.generate(_units.length, (index) {
        return strategy.createAnimation(
          controller: controller,
          startTime: 0, // All start together
          endTime: animationDuration, // All end together
          curve: curve,
        );
      });
    } else {
      final staggerOffset = _units.length > 1
          ? (totalAnimationTime - animationDuration) / (_units.length - 1)
          : 0.0;

      _animations = List.generate(_units.length, (index) {
        final start =
            (index * staggerOffset / totalAnimationTime).clamp(0.0, 1.0);
        final end =
            ((index * staggerOffset + animationDuration) / totalAnimationTime)
                .clamp(0.0, 1.0);

        return strategy.createAnimation(
          controller: controller,
          startTime: start,
          endTime: end,
          curve: curve,
        );
      });
    }
  }

  Animation<double> getAnimationForIndex(int index) => _animations[index];
  String getUnitAtIndex(int index) => _units[index];
  int get unitCount => _units.length;

  void dispose() {
    _animations.clear();
  }
}

// Enhanced Text Reveal Widget
class EnhancedTextRevealEffect extends StatefulWidget {
  const EnhancedTextRevealEffect({
    required this.text,
    required this.trigger,
    this.style,
    this.duration = const Duration(milliseconds: 1000),
    this.curve = Curves.easeInOut,
    this.unit = AnimationUnit.character,
    // Now this is const-correct!
    this.strategy = const FadeBlurStrategy(),
    this.direction = AnimationDirection.forward,
    super.key,
  });

  final String text;
  final TextStyle? style;
  final Duration duration;
  final Curve curve;
  final bool trigger;
  final AnimationUnit unit;
  final TextAnimationStrategy strategy;
  final AnimationDirection direction;

  @override
  State<EnhancedTextRevealEffect> createState() =>
      _EnhancedTextRevealEffectState();
}

class _EnhancedTextRevealEffectState extends State<EnhancedTextRevealEffect>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late EnhancedTextAnimationManager _animationManager;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _controller.addStatusListener(_handleAnimationStatus);
    _initializeAnimationManager();

    // If trigger is true initially, show the animation
    if (widget.trigger) {
      _isVisible = true;
      _controller.forward();
    }
  }

  void _handleAnimationStatus(AnimationStatus status) {
    if (status == AnimationStatus.dismissed) {
      setState(() {
        _isVisible = false;
      });
    } else if (status == AnimationStatus.forward) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  void _initializeAnimationManager() {
    _animationManager = EnhancedTextAnimationManager(
      controller: _controller,
      text: widget.text,
      curve: widget.curve,
      unit: widget.unit,
      strategy: widget.strategy,
    );
  }

  @override
  void didUpdateWidget(EnhancedTextRevealEffect oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Handle trigger changes
    if (widget.trigger != oldWidget.trigger) {
      if (widget.trigger) {
        setState(() {
          _isVisible = true;
        });
        if (widget.direction == AnimationDirection.forward) {
          _controller.forward(from: 0);
        } else {
          _controller.reverse(from: 1);
        }
      } else {
        if (widget.direction == AnimationDirection.forward) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      }
    }

    // Handle content or strategy changes
    if (widget.text != oldWidget.text ||
        widget.unit != oldWidget.unit ||
        widget.strategy != oldWidget.strategy) {
      _animationManager.dispose();
      _initializeAnimationManager();
    }
  }

  @override
  void dispose() {
    _controller
      ..removeStatusListener(_handleAnimationStatus)
      ..dispose();
    _animationManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) return const SizedBox.shrink(); // Hide when not visible

    return Wrap(
      children: List.generate(
        _animationManager.unitCount,
        (index) => widget.strategy.buildAnimatedCharacter(
          character: _animationManager.getUnitAtIndex(index),
          animation: _animationManager.getAnimationForIndex(index),
          style: widget.style,
        ),
      ),
    );
  }
}
