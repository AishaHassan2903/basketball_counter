import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballPoints());
}

class BasketballPoints extends StatelessWidget {
  const BasketballPoints({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
