import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', requireEnvFile: false, obfuscate: true)
abstract class Env {
  // @EnviedField(useConstantCase: true, obfuscate: true)
  // static String sentryDsn = _Env.sentryDsn;
}
