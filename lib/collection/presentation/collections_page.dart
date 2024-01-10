import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/collection/shared/providers.dart';

class CollectionsPage extends ConsumerWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(getCollections);
    return Scaffold(
      backgroundColor: const Color(0xFFD7FE62),
      body: SafeArea(
        child: data.when(
            data: (data) => Ink(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
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
                                "Коллекция",
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
                      const Gap(10),
                      Expanded(
                        child: GridView.builder(
                          itemCount: data.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                data[index].title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 30,
                          ),
                        ),
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
