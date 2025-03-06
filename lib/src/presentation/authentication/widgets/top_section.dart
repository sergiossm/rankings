part of '../authentication_page.dart';

class _TopSection extends StatelessWidget {
  const _TopSection({
    required this.fadeAnimation,
    required this.slideAnimation,
    required this.isAnimating,
    required this.subtitleText,
  });

  final double fadeAnimation;
  final Offset slideAnimation;
  final ValueNotifier<bool> isAnimating;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
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
