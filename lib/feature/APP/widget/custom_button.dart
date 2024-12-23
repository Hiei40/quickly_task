import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text});
final void Function()? onTap;
final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 57,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(
            color: Colors.orange,
            width: 3,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: GoogleFonts.cairo().fontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.orange),
        ),
      ),
    );
  }
}
