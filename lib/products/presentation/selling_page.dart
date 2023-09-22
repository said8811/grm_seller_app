import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/core/shared/providers.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/providers.dart';

class SellProductPage extends ConsumerStatefulWidget {
  final ProductModel product;
  const SellProductPage({super.key, required this.product});

  @override
  ConsumerState<SellProductPage> createState() => _SellProductPageState();
}

class _SellProductPageState extends ConsumerState<SellProductPage> {
  SharedPreferences? pref;
  int count = 1;
  bool cardUsed = false;
  TextEditingController priceController = TextEditingController();
  TextEditingController plasticController = TextEditingController();

  getShared() async {
    pref = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    getShared();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kassaId = ref.watch(kassaNotifier);
    ref.listen(orderStateNotifier, (previous, next) {
      if (next.isCreated) {
        Navigator.pop(context);
      }
      if (next.error != null) {
        Fluttertoast.showToast(msg: next.error!);
      }
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE0DFD6),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xFFE0DFD6),
        centerTitle: false,
        title: const Text(
          "Назад",
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "Proximity Mills",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Gap(8),
              Text(
                "${widget.product.size}|${widget.product.shape}|${widget.product.style}",
                style: const TextStyle(color: Color(0xFF121212)),
              ),
              const Gap(40),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Text(
                      "Количество",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          if (count != 1) {
                            setState(() {});
                            count -= 1;
                          }
                        },
                        icon: const Icon(Icons.remove)),
                    Text(count.toString()),
                    IconButton(
                        onPressed: () {
                          setState(() {});
                          count += 1;
                        },
                        icon: const Icon(Icons.add))
                  ],
                ),
              ),
              const Gap(20),
              TextField(
                keyboardType: TextInputType.number,
                controller: priceController,
                decoration: InputDecoration(
                  prefix: const Text(
                    "\$",
                    style: TextStyle(color: Colors.black),
                  ),
                  hintText: "Цена продажи",
                  hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const Gap(20),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {});
                  cardUsed = !cardUsed;
                },
                leading: Checkbox(
                  focusColor: Colors.black,
                  activeColor: Colors.black,
                  checkColor: Colors.black,
                  value: cardUsed,
                  onChanged: null,
                ),
                title: const Text("Пластик карта"),
              ),
              const Gap(10),
              Opacity(
                opacity: cardUsed ? 1 : 0,
                child: TextField(
                  controller: plasticController,
                  decoration: InputDecoration(
                    hintText: "Сколько оплачено пластиком",
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text(
                      "Отмена",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint(kassaId);
                      ref.read(orderStateNotifier.notifier).createOrder(
                          widget.product.id,
                          kassaId,
                          int.parse(priceController.text),
                          cardUsed ? int.parse(plasticController.text) : 0,
                          count);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white),
                    child: const Text(
                      "Продать",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
