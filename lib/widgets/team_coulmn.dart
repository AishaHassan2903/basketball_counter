import 'package:basketball_points/widgets/increment_elevated_button.dart';
import 'package:flutter/material.dart';

class TeamColumn extends StatelessWidget {
  final String teamName;
  final int counter;
  final Color color;
  const TeamColumn({
    super.key,
    required this.teamName,
    required this.counter,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Team $teamName',
          style: const TextStyle(fontSize: 32),
        ),
        Text(
          '$counter',
          style: TextStyle(
            fontSize: 100,
            color: color,
          ),
        ),
        IncrementElevatedButton(
          teamName: teamName,
          buttonNumber: 1,
        ),
        IncrementElevatedButton(
          teamName: teamName,
          buttonNumber: 2,
        ),
        IncrementElevatedButton(
          teamName: teamName,
          buttonNumber: 3,
        ),
      ],
    );
  }
}
