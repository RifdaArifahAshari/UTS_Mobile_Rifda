import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'cart_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'name': 'Buket Mawar ',
        'image': 'assets/images/bunga_mawar.jpg',
        'price': 75000,
        'description':
            'Buket mawar merah melambangkan cinta sejati, cocok untuk hadiah romantis 💕',
      },
      {
        'name': 'Tulip ',
        'image': 'assets/images/bunga_tulip.jpg',
        'price': 40000,
        'description':
            'Tulip pink lembut, simbol kasih sayang dan perhatian yang tulus 🌷',
      },
      {
        'name': 'Buket Matahari',
        'image': 'assets/images/bunga_matahari.jpg',
        'price': 55000,
        'description':
            'Buket bunga matahari yang ceria membawa kebahagiaan dan energi positif ☀️',
      },
      {
        'name': 'Buket Krisan ',
        'image': 'assets/images/bunga_krisan.jpg',
        'price': 80000,
        'description':
            'Krisan  penuh warna, cocok untuk ucapan selamat dan doa 💐',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 9, 38),
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/images/petaluxe.png', height: 60),
            const SizedBox(width: 10),
            const Text(
              'Toko Bunga Petaluxe',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Selamat Datang di Petaluxe 💐',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 96, 9, 38),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Temukan berbagai buket bunga cantik untuk setiap momen spesial Anda!',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final product = products[index];
                return _buildFlowerCard(
                  context,
                  product['name'],
                  product['image'],
                  product['price'],
                  product['description'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlowerCard(
    BuildContext context,
    String name,
    String image,
    int price,
    String description,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailPage(name: name, imagePath: image, price: 'Rp $price'),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.asset(
                image,
                height: 210,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 6.0,
              ),
              child: Column(
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Rp $price',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 96, 9, 38),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
