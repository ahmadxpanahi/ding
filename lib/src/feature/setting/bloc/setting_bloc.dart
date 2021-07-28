import 'package:ding/src/feature/setting/bloc/setting_event.dart';
import 'package:ding/src/feature/setting/bloc/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingBLoc extends Bloc<SettingEvent,SettingState>{
  SettingBLoc() : super(SettingInitialState());

  @override
  Stream<SettingState> mapEventToState(SettingEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }

}