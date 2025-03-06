import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rankings/firebase_options_development.dart' as dev;
import 'package:rankings/firebase_options_production.dart' as prod;
import 'package:rankings/firebase_options_staging.dart' as stg;
import 'package:rankings/src/app.dart';
import 'package:rankings/src/application/warmup/providers.dart';
import 'package:rankings/src/flavors.dart';
import 'package:rankings/src/presentation/warmup/app_warmup_widget.dart';

void main() async {
  // Initializes the provider container
  final container = ProviderContainer(
    overrides: [],
    observers: [],
  );

  // Runs the app with error handling
  await runZonedGuarded(() async {
    // Initializes services and controllers before the start of the application
    WidgetsFlutterBinding.ensureInitialized();

    final flavor = getFlavor();

    // Initializes Firebase
    final firebaseOptions = switch (flavor) {
      Flavor.production => prod.DefaultFirebaseOptions.currentPlatform,
      Flavor.staging => stg.DefaultFirebaseOptions.currentPlatform,
      Flavor.development => dev.DefaultFirebaseOptions.currentPlatform,
    };
    await Firebase.initializeApp(options: firebaseOptions);

    // Warms up the application
    container.read(appWarmupControllerProvider.notifier).warmUp();

    runApp(
      UncontrolledProviderScope(
        container: container,
        child: AppWarmupWidget(
          onLoaded: (context) => const App(),
        ),
      ),
    );
  }, (exception, stackTrace) async {
    // container.read(monitoringServiceProvider).logError(
    //   exception.toString(),
    //   error: exception,
    //   stackTrace: stackTrace,
    //   severity: ErrorSeverity.fatal,
    // );
  });
}
