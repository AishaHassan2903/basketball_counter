import 'package:basketball_points/constants.dart';
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetElevatedButton extends StatelessWidget {
  const ResetElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<CounterCubit>(context).reset();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          padding: const EdgeInsets.all(8),
          backgroundColor: kPrimaryColor,
          minimumSize: const Size(170, 50),
        ),
        child: const Text(
          'Reset',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
