import 'package:map_app_deliver/screens/clients_screens/select_type_colis.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      "Deliver Pro",
                      style: GoogleFonts.pacifico(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      "livraison à la demande simple, rapide, éfficace ",
                      style: GoogleFonts.roboto(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    RowColis(
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SelecttypeColis();
                        }));
                      },
                      textEntete: "Colis Pro",
                      textSousTitre: "Envoi et reception de colis",
                      image: 'assets/images/boy.jpg',
                    ),
                    SizedBox(height: size.height * 0.05),
                    RowColis(
                      press: () {},
                      textEntete: "Déménagement Pro",
                      textSousTitre: "Programmer un déménagement",
                      image: 'assets/images/login.jpg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RowColis extends StatelessWidget {
  final String image;
  final String textEntete, textSousTitre;
  final VoidCallback press;
  const RowColis({
    Key? key,
    required this.image,
    required this.textEntete,
    required this.textSousTitre,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 40,
        ),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  textEntete,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  textSousTitre,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
