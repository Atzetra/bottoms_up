import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'APPWRITE_ENDPOINT', obfuscate: true)
  static String appwriteEndpoint = _Env.appwriteEndpoint;
  @EnviedField(varName: 'APPWRITE_PROJECTID', obfuscate: true)
  static String appwriteProject = _Env.appwriteProject;
}