import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNormal extends StatelessWidget {
  final String text;
  final Color? color, backgroundColor;
  final VoidCallback press;
  const ButtonNormal({
    Key? key,
    required this.text,
    this.color = kPrimaryWhite,
    this.backgroundColor = kPrimaryPink,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: TextButton(
          onPressed: press,
          child: Text(text,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal, color: color, fontSize: 20)),
          style: TextButton.styleFrom(backgroundColor: backgroundColor)),
    );
  }
}
