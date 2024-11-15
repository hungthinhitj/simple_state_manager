import 'package:ez_state/ez_state.dart';
import 'package:flutter/material.dart';

import '../state/products_ez_state.dart';
import '../widgets/widgets.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EzStateProvider<ProductsEzState, ProductsState>(
      create: (context) => ProductsEzState(),
      child: const ProductsBody(),
    );
  }
}
