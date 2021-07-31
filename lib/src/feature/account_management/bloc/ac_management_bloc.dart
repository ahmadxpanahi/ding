import 'package:ding/src/feature/account_management/bloc/ac_management_event.dart';
import 'package:ding/src/feature/account_management/bloc/ac_management_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountManagementBloc
    extends Bloc<AccountManagementEvent, AccountManagementState> {
  AccountManagementBloc() : super(AcManagementInitialState());

  @override
  Stream<AccountManagementState> mapEventToState(
      AccountManagementEvent event) async* {
    if (event is ShowAcManagementLoading) {
      yield AcManagementLoadingState(event.isLoading);
    } else if (event is GetAcManagementData) {
      yield AcManagementInitialState();
    }
  }
}
