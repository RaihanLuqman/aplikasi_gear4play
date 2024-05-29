import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uts_mobile_raihanlilo/components/button.dart';
import 'package:uts_mobile_raihanlilo/components/gear_tile.dart';
import 'package:uts_mobile_raihanlilo/models/item.dart';
import 'package:uts_mobile_raihanlilo/pages/Gear_Detail.dart';
import 'package:uts_mobile_raihanlilo/theme/color.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  //Pergi Ke Gear Detail Page
  void navigateToGearDetails(int index) {
    //get shop and menu
    final item = context.read<Item>();
    final gearList = item.gearList;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GearDetailsPage(
          gear: gearList[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get shop and menu
    final item = context.read<Item>();
    final gearList = item.gearList;
    return Scaffold(
      backgroundColor: warnabackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Promo Banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Promo
                    Text(
                      'Get 50% Promo',
                      style: GoogleFonts.kanit(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),

                    const SizedBox(height: 20),

                    //redeem button
                    MyButton(
                      text: "Redeem Now",
                      onTap: () {},
                    )
                  ],
                ),

                //image
                Image.asset(
                  'images/item/gamer.png',
                  height: 100,
                )
              ],
            ),
          ),

          const SizedBox(height: 25),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: buttonColor),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: buttonColor),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Search here...",
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),

          const SizedBox(height: 25),

          //Menu List
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Best Gear List",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: buttonColor,
                  fontSize: 20),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gearList.length,
              itemBuilder: (context, index) => GearTile(
                gear: gearList[index],
                onTap: () => navigateToGearDetails(index),
              ),
            ),
          ),

          const SizedBox(height: 25),

          //Best Gaming Gear
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //image
                    Image.asset(
                      "images/item/steelseries.jpg",
                      height: 60,
                    ),

                    const SizedBox(width: 20),

                    //nama dan harga
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //nama
                        Text(
                          "Keyboard Mechanical",
                          style: GoogleFonts.kanit(
                              fontSize: 18, color: Colors.white),
                        ),

                        const SizedBox(height: 10),

                        //price
                        Text(
                          "\$99.00",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),

                //Favorite Heart
                const Icon(
                  Icons.favorite_outline,
                  color: Color.fromARGB(255, 21, 242, 28),
                  size: 28,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
