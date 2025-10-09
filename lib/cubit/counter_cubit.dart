import 'package:basketball_points/constants.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  int counterA = 0;
  int counterB = 0;
  Color colorA = kDrawColor;
  Color colorB = kDrawColor;

  void teamIncrement({required String teamName, required int buttonNumber}) {
    if (teamName == 'A') {
      counterA += buttonNumber;
      teamWin(counter: counterA);
    } else {
      counterB += buttonNumber;
      teamWin(counter: counterB);
    }

    emit(SuccessIncrementState());
  }

  void colorChange({required int counterA, required int counterB}) {
    if (counterA > counterB) {
      colorA = kWinnerColor;
      colorB = kLoserColor;
    } else if (counterA < counterB) {
      colorA = kLoserColor;
      colorB = kWinnerColor;
    } else {
      colorA = kDrawColor;
      colorB = kDrawColor;
    }
    emit(CounterChangeColorState());
  }

  void teamWin({required int counter}) {
    if (counter >= 15) {
      if (counterA > counterB) {
        emit(TeamWinnerState(winnerTeam: 'Team A'));
      } else {
        emit(TeamWinnerState(winnerTeam: 'Team B'));
      }
    }
  }

  void reset() {
    counterA = 0;
    counterB = 0;
    colorA = kDrawColor;
    colorB = kDrawColor;
    emit(CounterCResetState());
  }
}
