import 'package:ez_state/ez_state.dart';
import 'package:flutter/material.dart';

import '../counter_ez_state/counter_ez_state.dart';
import '../widgets/widgets.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EzStateProvider<CounterEzState, CounterState>(
      create: (context) => CounterEzState(),
      child: const CounterBody(),
    );
  }
}
