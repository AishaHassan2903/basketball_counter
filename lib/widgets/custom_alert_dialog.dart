import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAlertDialog extends StatelessWidget {
  final String team;
  const CustomAlertDialog({
    super.key,
    required this.team,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (inv, res) {
        BlocProvider.of<CounterCubit>(context).reset();
      },
      child: AlertDialog(
        title: Text('Congratulation $team!'),
        content: const Text('The counters will now reset.'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).reset();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
