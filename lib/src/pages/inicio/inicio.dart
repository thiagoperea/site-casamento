import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "15 de Outubro de 2022",
          style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 24)),
        ),
        SizedBox(height: 8),
        Text(
          "Família Neves",
          style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 16),
        Image.asset("images/nosso-dia-1.JPG", width: 800),
      ],
    );
  }
}
