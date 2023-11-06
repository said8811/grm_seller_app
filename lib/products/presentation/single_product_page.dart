import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/core/presentation/widget/global_app_bar.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:grm_cashier/products/presentation/widgets/product_detail_widget.dart';

class SingleProductPage extends StatelessWidget {
  final ProductModel product;
  const SingleProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0DFD6),
      appBar: const GlobalAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/images/singleCarpet.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),
            const Divider(
              color: Color(0xFF868680),
              height: 2,
            ),
            const Gap(15),
            const Text(
              "Продукт:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const Gap(20),
            ProductDetailWidget(
                label: "Коллекция", title: product.model.collection.title),
            ProductDetailWidget(label: "Название", title: product.model.title),
            ProductDetailWidget(label: "Размер", title: product.size),
            ProductDetailWidget(
                label: "Количество", title: product.count.toString()),
            ProductDetailWidget(
                label: "Цвет", title: product.color?.title ?? ""),
            ProductDetailWidget(label: "Стиль", title: product.style),
            ProductDetailWidget(label: "По форме", title: product.shape),
            ProductDetailWidget(label: "Артикул", title: product.style),
            ProductDetailWidget(label: "Цена", title: "${product.price}\$")
          ],
        ),
      ),
    );
  }
}
