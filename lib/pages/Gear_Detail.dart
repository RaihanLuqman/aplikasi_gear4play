import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:provider/provider.dart";
import "package:uts_mobile_raihanlilo/components/button.dart";
import "package:uts_mobile_raihanlilo/models/gear.dart";
import "package:uts_mobile_raihanlilo/models/item.dart";
import "package:uts_mobile_raihanlilo/theme/color.dart";

class GearDetailsPage extends StatefulWidget {
  final Gear gear;
  const GearDetailsPage({super.key, required this.gear});

  @override
  State<GearDetailsPage> createState() => _GearDetailsPageState();
}

class _GearDetailsPageState extends State<GearDetailsPage> {
  //quantity
  int quantityCount = 0;

  //decrement quantity (-)
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  //increment quantity (+)
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  //Tambahkan Keranjang
  void addToCart() {
    //Menambahkan ke keranjang jika ada sesuatu di keranjang
    if (quantityCount > 0) {
      //akses ke item
      final item = context.read<Item>();

      //tambah ke keranjang
      item.addToCart(widget.gear, quantityCount);

      //cek jika sudah masuk
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: const Text(
            "Sukses Memasukkan Keranjang",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          actions: [
            //Okay Button
            IconButton(
              onPressed: () {
                //menghilangkan text dialog sukses
                Navigator.pop(context);

                //keluar dari produk page
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          //listview gear detail
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.gear.imagePath,
                    height: 200,
                  ),

                  const SizedBox(height: 25),
                  //rating
                  Row(
                    children: [
                      //star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),

                      const SizedBox(
                        width: 5,
                      ),

                      //rating number
                      Text(
                        widget.gear.rating,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  const SizedBox(height: 10),

                  //gear name
                  Text(
                    widget.gear.name,
                    style: GoogleFonts.kanit(fontSize: 28, color: Colors.white),
                  ),

                  const SizedBox(height: 25),

                  //description
                  Text(
                    "Description",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Headset Gaming Daxa TS1 dirancang khusus untuk para gamer yang menginginkan kualitas audio terbaik dan kenyamanan penggunaan selama sesi bermain yang panjang. Dilengkapi dengan berbagai fitur unggulan, Daxa TS1 memberikan pengalaman gaming yang imersif dan mendalam.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 219, 218, 218),
                      fontSize: 14,
                      height: 2,
                    ),
                  )
                ],
              ),
            ),
          ),

          //harga + quantity + add cart
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //price & quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    Text(
                      "\$${widget.gear.price}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),

                    //quantity
                    Row(
                      children: [
                        //- button
                        Container(
                          decoration: BoxDecoration(
                              color: buttonColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          ),
                        ),

                        //quantity count
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                        //+ button
                        Container(
                          decoration: BoxDecoration(
                              color: buttonColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //cart button
                MyButton(text: "Masukkan Keranjang", onTap: addToCart),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
