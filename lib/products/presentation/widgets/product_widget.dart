import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:grm_cashier/products/presentation/selling_page.dart';
import 'package:grm_cashier/products/presentation/single_product_page.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SingleProductPage(product: product)));
      },
      child: Container(
        height: 240,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(product.imgUrl), fit: BoxFit.cover)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text("${product.count}| \$${product.price}"),
                ),
              ],
            ),
            const Gap(30),
            if (product.imgUrl.isEmpty)
              SvgPicture.asset('assets/icons/image.svg'),
            const Spacer(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${product.size} ${product.shape} ${product.style}",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "${product.model.collection.title} ${product.model.title}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SellProductPage(product: product),
                        )),
                    icon: SvgPicture.asset("assets/icons/cart.svg")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
