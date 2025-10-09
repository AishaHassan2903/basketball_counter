abstract class CounterState {}

class CounterInitialState extends CounterState {}

class SuccessIncrementState extends CounterState {}

class CounterChangeColorState extends CounterState {}

class TeamWinnerState extends CounterState {
  String winnerTeam = '';

  TeamWinnerState({required this.winnerTeam});
}

class CounterCResetState extends CounterState {}
