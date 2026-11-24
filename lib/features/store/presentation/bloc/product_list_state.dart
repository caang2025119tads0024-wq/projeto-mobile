import '../../domain/entities/product.dart';

sealed class ProductListState {}

class ProductListLoading extends ProductListState {}

class ProductListSuccess extends ProductListState {
  final List<Product> produtos;

  ProductListSuccess({required this.produtos});
}

class ProductListFailure extends ProductListState {
  final String msg;

  ProductListFailure({required this.msg});
}
