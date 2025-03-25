import 'package:bloc/bloc.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitialState(index: 0)) {
    on<DashboardIndexUpdateEvent>((
      DashboardIndexUpdateEvent event,
      Emitter emit,
    ) {
      emit(DashboardIndexUpdateState(index: event.index));
    });
  }
}
