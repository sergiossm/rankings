import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rankings/l10n/l10n.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

part 'widgets/ask_button.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appBarTitle)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.s15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '🏅',
              style: TextStyle(fontSize: 32),
            ),
            AppSpacing.vertical.s3,
            Text(
              context.l10n.askMeToRankAnything,
              style: context.theme.textTheme.displaySmall?.copyWith(
                color: context.theme.colorScheme.onSurface.withOpacity(.3),
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.s5,
            vertical: AppSizes.s3,
          ),
          child: _AskButton(
            onTap: () {
              context.pushNamed(Routes.homeAskQuestion.name);
            },
          ),
        ),
      ),
    );
  }
}
