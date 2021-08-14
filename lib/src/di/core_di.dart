import 'package:ding/src/di/module_persistence.dart';
import 'package:ding/src/di/module_swagger.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> registerInjection() async {
  await registerPersistence(getIt);
  await registerApis(getIt);
}
