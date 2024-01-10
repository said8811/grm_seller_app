import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/core/presentation/main_page.dart';

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
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const Gap(100),
              const Text(
                "В процессе\nподтверждения",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(10),
              const Text(
                "Ваш товар появился в окне\nоформления заказа как проданный, не\nзабудьте подтвердить!",
                textAlign: TextAlign.center,
              ),
              const Gap(30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const MainPage()),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Вернуться на главную",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
