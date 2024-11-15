import 'package:ez_state/ez_state.dart';
import 'package:flutter/material.dart';

import '../counter_ez_state/counter_ez_state.dart';

class CounterBody extends StatefulWidget {
  const CounterBody({super.key});

  @override
  State<CounterBody> createState() => _CounterBodyState();
}

class _CounterBodyState extends State<CounterBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: context.of<CounterEzState, CounterState>().reset,
            child: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: context.of<CounterEzState, CounterState>().increment,
            icon: const Icon(Icons.arrow_upward),
          ),
          const SizedBox(height: 10),
          IconButton(
            onPressed: context.of<CounterEzState, CounterState>().decrement,
            icon: const Icon(Icons.arrow_downward),
          ),
        ],
      ),
      body: Center(
        child: EzStateBuilder<CounterEzState, CounterState>(
          builder: (context, state) {
            return Text(
              '${state.count}',
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
    );
  }

  // This section is a test for performace when multiple events are called
  // @override
  // void initState() {
  //   super.initState();
  //   var isIncrement = true;
  //   Timer.periodic(const Duration(milliseconds: 100), (_) {
  //     if (isIncrement) {
  //       context.of<CounterEzState, CounterState>().decrement();
  //     } else {
  //       context.of<CounterEzState, CounterState>().increment();
  //     }
  //     isIncrement = !isIncrement;
  //   });
  // }
}
