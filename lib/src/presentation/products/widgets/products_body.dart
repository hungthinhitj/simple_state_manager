import 'package:ez_state/ez_state.dart';
import 'package:flutter/material.dart';

import '../state/products_ez_state.dart';

class ProductsBody extends StatefulWidget {
  const ProductsBody({super.key});

  @override
  State<ProductsBody> createState() => _ProductsBodyState();
}

class _ProductsBodyState extends State<ProductsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      body: Column(
        children: [
          const Center(child: Text('Products')),
          Expanded(
            child: EzStateBuilder<ProductsEzState, ProductsState>(
              builder: (context, state) {
                if (state is ProductsLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is ProductsLoadSuccess) {
                  return ListView.separated(
                    itemCount: state.data.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) => ListTile(
                      title: Text('${state.data[index]?.name}'),
                    ),
                  );
                }
                return Center(
                  child: TextButton(
                    onPressed: context
                        .of<ProductsEzState, ProductsState>()
                        .fetchingTodo,
                    child: const Text('Fetch products'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
