import 'package:flutter/material.dart';
import 'login_page.dart'; // pastikan file ini ada di folder lib

void main() {
  runApp(const FlowerShopApp());
}

class FlowerShopApp extends StatelessWidget {
  const FlowerShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Bunga Cantik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 198, 228),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.purpleAccent,
        ),
        fontFamily: 'Poppins',
      ),
      home: const LoginPage(), // ✅ ini wajib LoginPage
    );
  }
}
