import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:uts_mobile_raihanlilo/models/gear.dart";
import "package:uts_mobile_raihanlilo/theme/color.dart";

class GearTile extends StatelessWidget {
  final Gear gear;
  final void Function()? onTap;

  const GearTile({
    super.key,
    required this.gear,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image with rounded border
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(gear.imagePath, height: 150),
            ),

            // text
            Text(
              gear.name,
              style: GoogleFonts.kanit(fontSize: 20, color: Colors.white),
            ),

            // price & rate
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Text(
                    '\$' + gear.price,
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),

                  // rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),
                      Text(
                        gear.rating,
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
