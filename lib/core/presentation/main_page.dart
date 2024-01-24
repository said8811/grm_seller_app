import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/auth/presentation/auth_page.dart';
import 'package:grm_cashier/core/application/change_ui_notifier.dart';
import 'package:grm_cashier/core/presentation/widget/collections_view.dart';
import 'package:grm_cashier/core/presentation/widget/products_view.dart';
import 'package:grm_cashier/core/presentation/widget/search_engine_with_filter.dart';
import 'package:grm_cashier/core/presentation/widget/select_custom_widget.dart';
import 'package:grm_cashier/core/shared/providers.dart';
import 'package:grm_cashier/products/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isFilter = useState(false);
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
                      SelectCustomWidget(
                        onTap: () {
                          ref.read(mainPageNotifier.notifier).changeState(
                              state == MainPageStates.collection
                                  ? MainPageStates.product
                                  : MainPageStates.collection);
                        },
                        isSelected: state == MainPageStates.collection,
                        label: "Коллекции",
                        count: "3200 шт ковров",
                      ),
                      const Gap(10),
                      SelectCustomWidget(
                          onTap: () {
                            ref.read(mainPageNotifier.notifier).changeState(
                                state == MainPageStates.otchet
                                    ? MainPageStates.product
                                    : MainPageStates.otchet);
                          },
                          isSelected: state == MainPageStates.otchet,
                          label: "Отчеты",
                          count: "За месяц")
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
                title: SearchEngineWithFilter(
                  onTap: () {
                    isFilter.value = !isFilter.value;
                  },
                )),
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
                          RefreshIndicator(
                              onRefresh: () async {
                                ref.watch(getProducts);
                              },
                              child: const ProductsView()),
                        const Gap(20),
                        if (state == MainPageStates.collection)
                          CollectionsView(
                            onTap: (collection) {},
                          ),
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
