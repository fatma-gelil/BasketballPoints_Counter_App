import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamApoints = 0;
  int teamBpoints = 0;

  void addTeamApoints({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterTeamAIncrement());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterTeamBIncrement());
    }
  }

  void resetCounter() {
    teamApoints = teamBpoints = 0;
    emit(CounterInitial());
  }
}
