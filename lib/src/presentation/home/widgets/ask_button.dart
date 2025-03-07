part of '../home_page.dart';

class _AskButton extends HookWidget {
  const _AskButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // List of texts to cycle through
    final textList = useMemoized(
      () => [
        context.l10n.topMovies,
        context.l10n.bestRestaurants,
        context.l10n.greatestAthletes,
        context.l10n.beautifulPlaces,
        context.l10n.programmingLanguages,
        context.l10n.techUnicorns,
        context.l10n.startupFounders,
        context.l10n.youtubeCreators,
        context.l10n.productivityTools,
        context.l10n.paidInfluencers,
      ],
      const [],
    );

    // State hooks
    final currentTextIndex = useState(0);
    final triggerAnimation = useState(false);

    // Timer hooks
    final resetTimer = useRef<Timer?>(null);
    final rotationTimer = useRef<Timer?>(null);

    // // Function to handle animation trigger
    final handleAnimationTrigger = useCallback(
      () {
        triggerAnimation.value = true;

        // Cancel any existing timer
        resetTimer.value?.cancel();

        // Set a new timer to reset the trigger after 300ms
        resetTimer.value = Timer(const Duration(milliseconds: 300), () {
          triggerAnimation.value = false;
        });
      },
      [],
    );

    // Function to start rotation timer
    final startRotationTimer = useCallback(
      () {
        // Cancel any existing timer
        rotationTimer.value?.cancel();

        // Set a new timer that triggers every 5 seconds
        rotationTimer.value =
            Timer.periodic(const Duration(milliseconds: 5000), (_) {
          // Move to the next text in the list
          currentTextIndex.value =
              (currentTextIndex.value + 1) % textList.length;

          // Trigger the animation for the new text
          handleAnimationTrigger();
        });
      },
      [
        textList.length,
        handleAnimationTrigger,
      ],
    );

    // Effect to start the rotation timer
    useEffect(
      () {
        final timer =
            Timer(const Duration(milliseconds: 1000), startRotationTimer);

        // Cleanup function
        return () {
          timer.cancel();
          resetTimer.value?.cancel();
          rotationTimer.value?.cancel();
        };
      },
      [startRotationTimer],
    );

    return Stack(
      children: [
        BorderBeam(
          duration: 3,
          borderWidth: 3,
          colorFrom: context.theme.colorScheme.primary,
          colorTo: context.theme.colorScheme.tertiary,
          borderRadius: AppRadius.circular.s9,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.theme.colorScheme.secondary,
              borderRadius: AppRadius.circular.s9,
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.s5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HyperText(
                    text: textList[currentTextIndex.value],
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      color: context.theme.colorScheme.onSecondary,
                    ),
                    animationTrigger: triggerAnimation.value,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: AppRadius.circular.s9,
            ),
          ),
        ),
      ],
    );
  }
}
