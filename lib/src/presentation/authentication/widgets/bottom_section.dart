part of '../authentication_page.dart';

class _BottomSection extends ConsumerWidget {
  const _BottomSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(color: context.color.surfaceVariant),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Button(
                      expand: true,
                      onPressed: () async {
                        unawaited(
                          ref
                              .read(authenticationControllerProvider.notifier)
                              .signInWithGoogle(),
                        );
                      },
                      type: ButtonType.filledVariant,
                      text: context.l10n.continueWithGoogle,
                      icon: HugeIcon(
                        icon: HugeIcons.strokeRoundedGoogle,
                        color: context.color.onSecondary,
                      ),
                    ),
                    AppSpacing.vertical.s3,
                    Button(
                      expand: true,
                      onPressed: () async {},
                      type: ButtonType.filledVariant,
                      text: context.l10n.continueWithApple,
                      icon: HugeIcon(
                        icon: HugeIcons.strokeRoundedApple,
                        color: context.color.onSecondary,
                      ),
                    ),
                    AppSpacing.vertical.s3,
                    Button(
                      expand: true,
                      onPressed: () async {},
                      type: ButtonType.text,
                      text: context.l10n.otherOptions,
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.developedBy,
                      style: context.textStyle.bodySmall.copyWith(
                        color: context.color.secondary.withValues(alpha: .7),
                      ),
                    ),
                    TextSpan(
                      text: ' Sergio Sánchez',
                      style: context.textStyle.bodySmall.copyWith(
                        color: context.color.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
