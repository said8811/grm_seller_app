import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/auth/presentation/auth_page.dart';
import 'package:grm_cashier/collection/shared/providers.dart';
import 'package:grm_cashier/core/application/change_ui_notifier.dart';
import 'package:grm_cashier/core/shared/providers.dart';
import 'package:grm_cashier/products/presentation/widgets/product_widget.dart';
import 'package:grm_cashier/products/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(getProducts);
    final isFilter = useState(false);
    final data = ref.watch(getCollections);
    final state = ref.watch(mainPageNotifier);
    return Scaffold(
      backgroundColor: const Color(0xFFE0DFD6),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 200,
              leadingWidth: 0,
              pinned: false,
              backgroundColor: const Color(0xFFE0DFD6),
              title: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return const AuthPage();
                              },
                            ), (route) => false);
                          },
                          child: SvgPicture.asset("assets/icons/menu.svg")),
                      const Gap(10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.cover,
                          width: 40,
                        ),
                      )
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () {
                            ref.read(mainPageNotifier.notifier).changeState(
                                state == MainPageStates.collection
                                    ? MainPageStates.product
                                    : MainPageStates.collection);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: state == MainPageStates.collection
                                    ? Colors.black
                                    : Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Коллекции",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: state == MainPageStates.collection
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                const Gap(4),
                                Text(
                                  "3200 шт ковров",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: state == MainPageStates.collection
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                const Gap(12),
                                SvgPicture.asset(
                                  state == MainPageStates.collection
                                      ? "assets/icons/arrowDown.svg"
                                      : "assets/icons/next.svg",
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () {
                            ref
                                .read(mainPageNotifier.notifier)
                                .changeState(MainPageStates.otchet);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: state == MainPageStates.otchet
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Отчеты",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: state == MainPageStates.otchet
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                const Gap(4),
                                Text(
                                  "За месяц",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: state == MainPageStates.otchet
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                const Gap(12),
                                SvgPicture.asset(
                                  state == MainPageStates.otchet
                                      ? "assets/icons/arrowDown.svg"
                                      : "assets/icons/next.svg",
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SliverAppBar(
              leadingWidth: 0,
              pinned: true,
              toolbarHeight: 80,
              backgroundColor: const Color(0xFFE0DFD6),
              title: SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(18)),
                          hintText: "Поиск",
                          prefixIcon: const Icon(Icons.search),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    const Gap(7),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          isFilter.value = !isFilter.value;
                        },
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(18),
                          child: SvgPicture.asset(
                            "assets/icons/filterOutlined.svg",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isFilter.value)
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
                        if (state == MainPageStates.product)
                          products.when(
                            data: (data) => ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    const Gap(15),
                                itemCount: data.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    ProductWidget(product: data[index])),
                            error: (error, stackTrace) =>
                                Text(error.toString()),
                            loading: () => const Center(
                                child: CircularProgressIndicator()),
                          ),
                        if (state == MainPageStates.collection)
                          data.when(
                              data: (data) => GridView.builder(
                                    itemCount: data.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Container(
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                              error: (error, stackTrace) => Center(
                                    child: Text(error.toString()),
                                  ),
                              loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  )),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
