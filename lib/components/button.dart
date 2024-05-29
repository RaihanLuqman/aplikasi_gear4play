import 'package:flutter/material.dart';
import 'package:uts_mobile_raihanlilo/theme/color.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text
            Text(
              text,
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),

            const SizedBox(width: 10),

            //Icon
            Icon(
              Icons.arrow_forward,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ],
        ),
      ),
    );
  }
}
