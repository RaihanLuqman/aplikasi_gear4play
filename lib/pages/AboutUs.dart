import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 52, 52, 52),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Gear4Play',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 21, 242, 28), // Warna hijau
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to Gear4Play!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 8),
              Text(
                'At Gear4Play, we are passionate about gaming and committed to bringing the best gaming gear to enthusiasts all over the world. Our mission is to provide top-quality products that enhance your gaming experience, whether you are a casual gamer or a professional e-sports athlete.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Our Story',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Founded in 2020, Gear4Play was born out of a desire to create a one-stop shop for the latest and greatest in gaming technology. Our founders, avid gamers themselves, saw a need for a retailer that truly understands the gaming community and its needs. Since then, we have grown into a trusted name in the gaming industry, known for our dedication to quality and customer satisfaction.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 16),
              Text(
                'What We Offer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We offer a wide range of products, including gaming laptops, desktops, peripherals, accessories, and more. Our catalog is carefully curated to include only the best products from leading brands. Whether you are looking for the latest high-performance graphics card or a comfortable gaming chair, Gear4Play has got you covered.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Our Commitment',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 8),
              Text(
                'At Gear4Play, we are committed to providing exceptional customer service. Our knowledgeable staff is always ready to help you find the perfect gear for your needs. We believe in building lasting relationships with our customers, and we are always here to support you on your gaming journey.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Join Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna putih
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Join the Gear4Play community today and take your gaming experience to the next level. Follow us on social media, sign up for our newsletter, and stay up-to-date with the latest news and deals. We look forward to serving you!',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.white, // Warna putih
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
