import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:grm_cashier/auth/application/auth_notifier.dart';
import 'package:grm_cashier/auth/shared/providers.dart';
import 'package:grm_cashier/core/presentation/main_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen(auhtStateNotifier, (previous, next) {
      if (next == AuthState.succes || previous == AuthState.succes) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MainPage()),
            (route) => false);
      } else if (next == AuthState.failure) {
        Fluttertoast.showToast(msg: "Неправильный логин");
      }
    });
    final login = useState("");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE0DFD6),
        centerTitle: false,
        title: SvgPicture.asset("assets/icons/logo.svg"),
      ),
      backgroundColor: const Color(0xFFE0DFD6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Добро пожаловать в\nGRM ERP system",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Text(
                    "Оставьте управление и расчеты нам, вы думаете о развитии своего бизнеса..."),
                const Gap(20),
                TextField(
                  onSubmitted: (newValue) {
                    ref.read(auhtStateNotifier.notifier).login("#$newValue");
                  },
                  onChanged: (value) {
                    login.value = value;
                  },
                  decoration: InputDecoration(
                      prefix: const Text("#"),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Введите всой ID",
                      hintStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none)),
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(auhtStateNotifier.notifier)
                        .login("#${login.value}");
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color(0xFF282828),
                      foregroundColor: Colors.white,
                      elevation: 0.1),
                  child: const Text(
                    "Войти",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
