import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EndProductsPage extends StatelessWidget {
  const EndProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Column(
        children: [
          Text(
            "В процессе\nподтверждения",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Gap(10),
          Text(
            "Ваш товар появился в окне\nоформления заказа как проданный, не\nзабудьте подтвердить!",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
