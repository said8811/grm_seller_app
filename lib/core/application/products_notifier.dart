import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:grm_cashier/products/infrastructure/products_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'products_notifier.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    required List<ProductModel> products,
    required List<ProductModel> searchedProducts,
    required bool isLoading,
    required String query,
    String? error,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
      products: [], isLoading: false, searchedProducts: [], query: "");
}

class ProductsNotifier extends StateNotifier<ProductState> {
  final ProductsRepository _repository;
  ProductsNotifier(this._repository) : super(ProductState.initial()) {
    getProducts();
  }

  Future<void> getProducts() async {
    state = state.copyWith(isLoading: true);
    final data = await _repository.getProducts();
    state = state.copyWith(products: data, isLoading: false);
  }

  void search(String text) {
    if (!mounted) return;
    state = state.copyWith(
      query: text,
      searchedProducts: state.products
          .where((i) =>
              i.model.title
                  .toLowerCase()
                  .split(' ')
                  .join()
                  .contains(text.toLowerCase().split(' ').join()) ||
              i.size
                  .toLowerCase()
                  .split(' ')
                  .join()
                  .contains(text.toLowerCase().split(' ').join()) ||
              i.style
                  .toLowerCase()
                  .split(' ')
                  .join()
                  .contains(text.toLowerCase().split(' ').join()) ||
              i.shape
                  .toLowerCase()
                  .split(' ')
                  .join()
                  .contains(text.toLowerCase().split(' ').join()) ||
              i.color!.title
                  .toLowerCase()
                  .split(' ')
                  .join()
                  .contains(text.toLowerCase().split(' ').join()) ||
              i.model.collection.title
                  .toLowerCase()
                  .split(' ')
                  .join()
                  .contains(text.toLowerCase().split(' ').join()))
          .toList(),
    );
  }
}
