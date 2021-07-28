import 'package:equatable/equatable.dart';

abstract class SettingState extends Equatable{}

class SettingInitialState extends SettingState{
  @override
  List<Object?> get props => [];

}

class SettingLoadingState extends SettingState{
  bool isLoading;
  SettingLoadingState(this.isLoading);
  @override
  List<Object?> get props => [isLoading];

}

class SettingErrorState extends SettingState{
  String message;
  SettingErrorState(this.message);
  @override
  List<Object?> get props => [message];

}