import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {}

class SplashInitialState extends SplashState {
  @override
  List<Object?> get props => [];
}

class ProfileBasicsLoaded extends SplashState {
  bool success;

  ProfileBasicsLoaded(this.success);

  @override
  List<Object?> get props => [success];
}
