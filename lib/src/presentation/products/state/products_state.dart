part of 'products_ez_state.dart';

abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoadFailure extends ProductsState {
  final String? msg;

  ProductsLoadFailure(this.msg);
}

class ProductsLoadSuccess extends ProductsState {
  List<Product?> data;

  ProductsLoadSuccess(this.data);
}
