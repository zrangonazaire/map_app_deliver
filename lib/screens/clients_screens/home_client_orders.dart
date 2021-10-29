import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeClientOrder extends StatefulWidget {
  const HomeClientOrder({Key? key}) : super(key: key);

  @override
  _HomeClientOrderState createState() => _HomeClientOrderState();
}

class _HomeClientOrderState extends State<HomeClientOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/nazgood.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Envoyer un Colis",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "20 Janvier 2021",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_right,
                    size: 70,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_circle_up_rounded,
                    size: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Origine",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "18 koumassi...",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: Colors.black,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_circle_down_rounded,
                    size: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Destination",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "18 Yopougon...",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text("Net à payer : 1200 XOF",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, color: Colors.amber.shade800)),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.pause_circle_outline_rounded,
                    size: 40,
                    color: Colors.amber.shade800,
                  ),
                  Text(
                    "En attente de livreur",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade800,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Suivre",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
