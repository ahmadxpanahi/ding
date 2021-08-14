import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> registerPersistence(GetIt getIt) async {
  final sharedPreferences = await _sharedPreferences();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

Future<SharedPreferences> _sharedPreferences() async {
  return await SharedPreferences.getInstance();
}
