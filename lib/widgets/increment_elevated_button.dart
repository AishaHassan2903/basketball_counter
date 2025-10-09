import 'package:basketball_points/constants.dart';
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementElevatedButton extends StatelessWidget {
  final String teamName;
  final int buttonNumber;

  const IncrementElevatedButton({
    super.key,
    required this.teamName,
    required this.buttonNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<CounterCubit>(context).teamIncrement(
            teamName: teamName,
            buttonNumber: buttonNumber,
          );
          BlocProvider.of<CounterCubit>(context).colorChange(
            counterA: BlocProvider.of<CounterCubit>(context).counterA,
            counterB: BlocProvider.of<CounterCubit>(context).counterB,
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          padding: const EdgeInsets.all(8),
          backgroundColor: kPrimaryColor,
          minimumSize: const Size(110, 50),
        ),
        child: Text(
          'Add $buttonNumber point',
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
