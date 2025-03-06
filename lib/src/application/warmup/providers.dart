import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rankings/src/application/warmup/controllers/app_warmup_controller.dart';
import 'package:rankings/src/application/warmup/services/app_warmup_service.dart';

//
// Services
final appWarmupServiceProvider = Provider<AppWarmupService>((ref) {
  return const AppWarmupService();
});

//
// Controllers
final appWarmupControllerProvider =
    StateNotifierProvider<AppWarmupController, AsyncValue<void>>(
  (ref) => AppWarmupController(
    appWarmupService: ref.watch(appWarmupServiceProvider),
  ),
);
