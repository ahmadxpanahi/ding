import 'package:ding/src/di/core_di.dart';

T inject<T extends Object>(){
  return getIt.get<T>();
}