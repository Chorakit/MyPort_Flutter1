import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle({super.key, required this.text, required this.size});
  final String text;
  final double size;

  Color checkColor() {
    return text == 'Learn Flutter the fun way!'
        ? const Color.fromARGB(255, 237, 223, 252)
        : const Color.fromARGB(255, 201, 153, 251);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: checkColor(),
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
