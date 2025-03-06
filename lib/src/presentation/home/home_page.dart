import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rankings/l10n/l10n.dart';
import 'package:rankings/src/application/authentication/controllers/authentication_controller.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appBarTitle)),
      body: Center(
        child: Button(
          onPressed: () async {
            unawaited(
              ref.read(authenticationControllerProvider.notifier).signOut(),
            );
          },
          text: 'Sign Out',
        ),
      ),
    );
  }
}
