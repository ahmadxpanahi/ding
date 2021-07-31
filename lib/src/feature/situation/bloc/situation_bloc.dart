import 'package:ding/src/feature/situation/bloc/situation_event.dart';
import 'package:ding/src/feature/situation/bloc/situation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SituationBloc extends Bloc<SituationEvent, SituationState> {
  SituationBloc() : super(SituationInitialState());

  @override
  Stream<SituationState> mapEventToState(SituationEvent event) async* {
    if (event is ShowSituationLoading) {
      yield SituationLoadingState(event.isLoading);
    } else if (event is ShowSituationError) {
      yield SituationErrorState(event.message);
    } else if (event is GetSituationData) {
      yield SituationInitialState();
    }
  }
}
