import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {}

class LoadProfileBasics extends SplashEvent {
  @override
  List<Object?> get props => [];
}
