import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Utama 🍰"),
        backgroundColor: const Color.fromARGB(255, 255, 198, 228),
      ),
      body: const Center(
        child: Text(
          "Ini contoh halaman menu utama 🌸",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
