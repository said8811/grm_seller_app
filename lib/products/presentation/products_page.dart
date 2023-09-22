import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/products/presentation/widgets/product_widget.dart';
import 'package:grm_cashier/products/shared/providers.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(getProducts);
    return Scaffold(
      body: SafeArea(
        child: data.when(
            data: (data) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(20),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: SvgPicture.asset(
                                  "assets/icons/closeIcon.svg")),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Продукти",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "${data.length} шт кавров",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Поиск",
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/filterIcon1.svg"),
                          const Gap(3),
                          SvgPicture.asset("assets/icons/filterIcon2.svg"),
                          const Gap(3),
                          SvgPicture.asset("assets/icons/filterIcon3.svg"),
                          const Gap(3),
                          SvgPicture.asset("assets/icons/filterIcon4.svg"),
                          const Gap(3),
                          SvgPicture.asset("assets/icons/filterIcon5.svg"),
                        ],
                      ),
                      const Gap(10),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) => const Gap(15),
                            itemCount: data.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                ProductWidget(product: data[index])),
                      ),
                    ],
                  ),
                ),
            error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )),
      ),
    );
  }
}
