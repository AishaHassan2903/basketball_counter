import 'package:basketball_points/constants.dart';
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:basketball_points/widgets/custom_alert_dialog.dart';
import 'package:basketball_points/widgets/reset_elevated_button.dart';
import 'package:basketball_points/widgets/team_coulmn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void congratulation(String team) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialog(
            team: team,
          );
        },
      );
    }

    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is TeamWinnerState) {
          congratulation(state.winnerTeam);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: const Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamColumn(
                    teamName: 'A',
                    counter: BlocProvider.of<CounterCubit>(context).counterA,
                    color: BlocProvider.of<CounterCubit>(context).colorA,
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                      width: 80,
                    ),
                  ),
                  TeamColumn(
                    teamName: 'B',
                    counter: BlocProvider.of<CounterCubit>(context).counterB,
                    color: BlocProvider.of<CounterCubit>(context).colorB,
                  ),
                ],
              ),
              const ResetElevatedButton(),
            ],
          ),
        );
      },
    );
  }
}
