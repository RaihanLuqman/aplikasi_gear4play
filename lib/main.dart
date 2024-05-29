import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts_mobile_raihanlilo/models/item.dart';
import 'package:uts_mobile_raihanlilo/pages/AboutUs.dart';
import 'package:uts_mobile_raihanlilo/pages/cart.dart';
import 'pages/shop.dart';
import 'pages/profile.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Item(),
      child: GamingGearShopApp(),
    ),
  );
}

class GamingGearShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gaming Gear Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(
            255, 52, 52, 52), // Warna latar belakang keseluruhan aplikasi
      ),
      home: HomeScreen(),
      routes: {
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Shop(),
    AboutUsPage(), // Updated to About Us
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png',
          height: 50, // Sesuaikan ukuran logo
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 52, 52, 52),
        foregroundColor: Colors.white, // Warna latar belakang AppBar
        actions: [
          //cart button
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    255, 77, 77, 77), // Warna latar belakang header drawer
              ),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Shop'),
              onTap: () {
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.info), // Updated icon
              title: Text('About Us'), // Updated title
              onTap: () {
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                _onItemTapped(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
