import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/products/presentation/widgets/product_widget.dart';
import 'package:grm_cashier/products/shared/providers.dart';

class ProductsView extends ConsumerWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(getProducts);
    return products.when(
      data: (data) => ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const Gap(15),
          itemCount: data.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => ProductWidget(product: data[index])),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
