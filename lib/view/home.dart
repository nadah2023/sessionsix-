import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sessionsix/Home/controller/cubit.dart';
import 'package:sessionsix/Home/controller/states.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, CounterState>(builder: (context, state) {
      final countetCubit = HomeCubit.get(
          context); //get to know that context for BuildContext widget
      print(state);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("counter cubit"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                countetCubit.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countetCubit.increament();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
