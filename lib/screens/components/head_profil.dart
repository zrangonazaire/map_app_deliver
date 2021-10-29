import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilHead extends StatelessWidget {
  const ProfilHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //width: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              height: 60,
              width: 60,
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/nazgood.png'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Zrango Nazaire",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 22)),
                const SizedBox(
                  height: 5,
                ),
                Text("1234567",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.pink))
              ],
            )
          ],
        ));
  }
}
