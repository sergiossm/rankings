import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lottie/lottie.dart';
import 'package:rankings/l10n/l10n.dart';
import 'package:rankings/src/application/rankings/providers.dart';
import 'package:rankings/ui_kit/src/widgets/text_field.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

class AskQuestionPage extends HookConsumerWidget {
  const AskQuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final rankingState = ref.watch(rankingControllerProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomTextField(
          textCapitalization: TextCapitalization.sentences,
          autofocus: true,
          controller: controller,
          focusNode: focusNode,
          hintText: context.l10n.askAQuestion,
          type: TextFieldType.underlined,
        ),
      ),
      body: () {
        if (rankingState.isLoading) {
          return Center(
            child: Lottie.asset(
              LottieAssets.rankingLoading,
              width: 100,
              height: 100,
            ),
          );
        }

        if (rankingState.result.hasValue) {
          final result = rankingState.result.value;
          if (result == null) {
            return const Center(child: Text('No result'));
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: result.items.length + 1,
            itemBuilder: (context, index) {
              final explanation = result.explanation;
              final item = result.items[index];
              final delay = Duration(milliseconds: index * 100);

              // Determine font size based on rank
              double fontSize;
              if (index == 0) {
                fontSize = 20;
              } else if (index == 1) {
                fontSize = 18;
              } else if (index == 2) {
                fontSize = 16;
              } else {
                fontSize = 14;
              }

              // Determine medal icon based on rank
              String? medalIcon;
              if (index == 0) {
                medalIcon = '🥇 ';
              } else if (index == 1) {
                medalIcon = '🥈 ';
              } else if (index == 2) {
                medalIcon = '🥉 ';
              }

              return Padding(
                padding: const EdgeInsets.only(bottom: AppSizes.s5),
                child: BlurFade(
                  delay: delay,
                  isVisible: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0) ...[
                        Text(
                          explanation ?? '',
                          style: context.textStyle.bodySmall,
                        ),
                        AppSpacing.vertical.s4,
                      ],
                      Text(
                        '${medalIcon ?? ''}${item.title}',
                        style: context.textStyle.titleMedium.copyWith(
                          fontSize: fontSize,
                        ),
                      ),
                      if (item.description != null) ...[
                        AppSpacing.vertical.s2,
                        Text(
                          item.description!,
                          style: context.textStyle.bodySmall,
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          );
        }
      }(),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                type: ButtonType.iconFilled,
                onPressed: () async {
                  unawaited(
                    ref
                        .read(rankingControllerProvider.notifier)
                        .getRanking(controller.text),
                  );

                  // Hide the keyboard
                  focusNode.unfocus();
                },
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedArrowRight01,
                  color: context.color.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
