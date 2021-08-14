import 'dart:typed_data';

import 'package:equatable/equatable.dart';

abstract class OthersState extends Equatable {}

class OthersInitialState extends OthersState {
  @override
  List<Object?> get props => [];
}

class ProfileLoaded extends OthersState {
  Uint8List? imageBinary;
  String profileName;

  ProfileLoaded(this.imageBinary, this.profileName);

  @override
  List<Object?> get props => [imageBinary, profileName];
}
