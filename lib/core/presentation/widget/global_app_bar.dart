import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: const Color(0xFFE0DFD6),
      centerTitle: false,
      title: const Text(
        "Назад",
        style: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
