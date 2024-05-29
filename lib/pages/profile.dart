import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style:
              TextStyle(color: Colors.white), // Ubah warna teks menjadi putih
        ),
        backgroundColor: Color.fromARGB(255, 52, 52, 52),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[300],
                backgroundImage: const AssetImage(
                  'images/profile.png', // Sesuaikan dengan path gambar Anda
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Nama: Raihan Lilo Al - Luqman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Ubah warna teks menjadi putih
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                'NRP: 1152200035',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Ubah warna teks menjadi putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
