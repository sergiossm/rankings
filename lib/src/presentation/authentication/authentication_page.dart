import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:rankings/ui_kit/src/animations/particles.dart';
import 'package:rankings/ui_kit/src/animations/text_reveal_widget.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

part 'widgets/bottom_section.dart';
part 'widgets/top_section.dart';

class AuthenticationPage extends HookWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAnimating = useState(true);
    const subtitleText = 'Use AI to explore rankings';
    final textController = useTextEditingController(text: subtitleText);

    // Animation controllers for slide and fade
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    final slideAnimation = useAnimation(
      Tween<Offset>(
        begin: const Offset(0, 0.03),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOutCubic,
        ),
      ),
    );

    final fadeAnimation = useAnimation(
      Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeIn,
        ),
      ),
    );

    useEffect(
      () {
        animationController.forward();
        return textController.dispose;
      },
      [],
    );

    return Scaffold(
      body: Column(
        children: [
          _TopSection(
            fadeAnimation: fadeAnimation,
            slideAnimation: slideAnimation,
            isAnimating: isAnimating,
            subtitleText: subtitleText,
          ),
          _BottomSection(),
        ],
      ),
    );
  }
}
