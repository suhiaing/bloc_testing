import 'package:count_app_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CupitPage extends StatefulWidget {
  const CupitPage({super.key});

  @override
  State<CupitPage> createState() => _CupitPageState();
}

class _CupitPageState extends State<CupitPage> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = CounterCubit();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, int>(
                bloc: counterCubit,
                builder: (context, counter) {
                  return Text(
                    "$counter",
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterCubit.increasement,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
