import 'package:equatable/equatable.dart';

abstract class SettingEvent extends Equatable {}

class ShowSettingLoading extends SettingEvent {
  bool isLoading;
  ShowSettingLoading(this.isLoading);
  @override
  List<Object?> get props => [isLoading];
}

class ShowSettingError extends SettingEvent {
  String message;
  ShowSettingError(this.message);
  @override
  List<Object?> get props => [message];
}
