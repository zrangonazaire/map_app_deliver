import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadText extends StatelessWidget {
  final String text;
  const HeadText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
    );
  }
}
