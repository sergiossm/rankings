import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', requireEnvFile: false, obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'OPENAI_API_KEY', obfuscate: true)
  static String openaiApiKey = _Env.openaiApiKey;
}
