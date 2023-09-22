import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/core/shared/providers.dart';
import 'package:grm_cashier/products/application/order_state_notifier.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:grm_cashier/products/infrastructure/products_repository.dart';

final productsRepositoryProvider =
    Provider((ref) => ProductsRepository(ref.watch(dioProvider)));

final getProducts = FutureProvider<List<ProductModel>>(
    (ref) => ref.watch(productsRepositoryProvider).getProducts());

final orderStateNotifier =
    StateNotifierProvider<OrderStateNotifier, OrderState>(
        (ref) => OrderStateNotifier(ref.watch(productsRepositoryProvider)));
