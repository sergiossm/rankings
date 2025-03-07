import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rankings/l10n/l10n.dart';
import 'package:rankings/src/presentation/routing/routers/app_router.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final appTheme = AppTheme.of(context);
    // useDeepLinks(ref);

    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: appTheme.theme,
      routerConfig: router,
      builder:
          (context, child) => Builder(
            builder:
                (context) => ThemeProvider(
                  appTheme: appTheme,
                  child: Scaffold(resizeToAvoidBottomInset: false, body: child),
                ),
          ),
    );
  }
}
