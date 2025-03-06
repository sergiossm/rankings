part of '../authentication_page.dart';

class _TopSection extends HookWidget {
  const _TopSection();

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

    return Expanded(
      flex: 2,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.color.surface,
        ),
        child: Stack(
          children: [
            const Positioned.fill(
              child: Particles(
                ease: 80,
                staticity: 100,
                color: Colors.grey,
                key: ValueKey(Colors.grey),
              ),
            ),
            FadeTransition(
              opacity: AlwaysStoppedAnimation(fadeAnimation),
              child: SlideTransition(
                position: AlwaysStoppedAnimation(slideAnimation),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rankings',
                      style: context.textStyle.displayMedium,
                    ),
                    Text(
                      '🏅',
                      style: context.textStyle.headlineLarge,
                    ),
                    AppSpacing.vertical.s4,
                    EnhancedTextRevealEffect(
                      text: subtitleText,
                      trigger: isAnimating.value,
                      style: context.textStyle.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
