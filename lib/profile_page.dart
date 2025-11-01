import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 9, 38),
        title: const Text(
          'Profil Saya 🌷',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Bagian atas profil
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Foto profil/logo
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: const AssetImage(
                      'assets/images/petaluxe.png',
                    ),
                    backgroundColor: Colors.pink[50],
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'rifdaarifah',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          size: 16,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          'Ubah Profil',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Menu profil seperti Shopee
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _buildProfileItem(
                    icon: Icons.person_outline,
                    color: Colors.blueAccent,
                    title: "Akun Saya",
                    onTap: () {},
                  ),
                  _divider(),
                  _buildProfileItem(
                    icon: Icons.receipt_long_outlined,
                    color: Colors.redAccent,
                    title: "Pesanan Saya",
                    onTap: () {},
                  ),
                  _divider(),
                  _buildProfileItem(
                    icon: Icons.notifications_outlined,
                    color: Colors.redAccent,
                    title: "Notifikasi",
                    onTap: () {},
                  ),
                  _divider(),
                  _buildProfileItem(
                    icon: Icons.confirmation_number_outlined,
                    color: Colors.orangeAccent,
                    title: "Voucher Saya",
                    onTap: () {},
                  ),
                  _divider(),
                  _buildProfileItem(
                    icon: Icons.monetization_on_outlined,
                    color: Colors.amber,
                    title: "Koin Petaluxe Saya",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem({
    required IconData icon,
    required Color color,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: color, size: 28),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }

  Widget _divider() {
    return const Divider(height: 1, thickness: 0.5);
  }
}
