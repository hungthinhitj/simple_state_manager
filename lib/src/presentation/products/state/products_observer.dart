import 'package:ez_state/ez_state.dart';
import 'package:flutter/foundation.dart';

import 'products_ez_state.dart';

class ProductsObserver extends EzStateObserver<ProductsState> {
  @override
  void onChange(ProductsState state) {
    if (state is ProductsLoadSuccess) {
      debugPrint('debugLength: ${state.data.length}');
    }
  }
}
