import 'package:ez_state/ez_state.dart';

import '../../../data/models/product.dart';
import '../../../mock/product_service.dart';
import 'products_observer.dart';

part 'products_state.dart';

class ProductsEzState extends EzState<ProductsState> {
  ProductsEzState() : super(ProductsInitial(), observer: ProductsObserver());

  final products = <Product?>[];

  Future<void> fetchingTodo() async {
    emit(ProductsLoading());
    await Future.delayed(const Duration(seconds: 2));
    products.addAll(ProductService.products);
    emit(ProductsLoadSuccess(products));
  }
}
