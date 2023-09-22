import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/products/infrastructure/products_repository.dart';

class OrderState {
  bool isCreated;
  String? error;

  OrderState({required this.isCreated, this.error});
}

class OrderStateNotifier extends StateNotifier<OrderState> {
  final ProductsRepository _repository;
  OrderStateNotifier(this._repository) : super(OrderState(isCreated: false));

  Future<void> createOrder(
    String productId,
    String kassaId,
    int price,
    int priceInPlastik,
    int amount,
  ) async {
    final data = await _repository.createOrder(
        productId, kassaId, price, priceInPlastik, amount);
    state = data.fold(
      (l) => OrderState(isCreated: false, error: l),
      (r) => OrderState(isCreated: true),
    );
  }
}
