import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        // Listen to whatever event you need to listen to...
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.goNamed(Routes.home.name);
        });

        return null;
      },
      [],
    );

    return Container();
  }
}
