import 'package:flutter/material.dart';

import 'src/presentation/counter/view/counter_page.dart';
import 'src/presentation/products/view/products_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // showPerformanceOverlay: true,
      title: 'Flutter simple state demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(builder: (context) {
        return Scaffold(
          body: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                navButton(
                  context,
                  label: 'Counter example',
                  page: const CounterPage(),
                ),
                const SizedBox(height: 12),
                navButton(
                  context,
                  label: 'Loading product example',
                  page: const ProductsPage(),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget navButton(
    final BuildContext context, {
    required String label,
    required Widget page,
  }) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => page,
          ),
        );
      },
      child: Text(label),
    );
  }
}
