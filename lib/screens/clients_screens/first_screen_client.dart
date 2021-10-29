import 'package:map_app_deliver/screens/clients_screens/login/login_widget.dart';
import 'package:map_app_deliver/screens/clients_screens/phone_screen.dart';

import 'get_start_screen.dart';
import 'login/creer_compte.dart';
import 'login/login.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreenClient extends StatelessWidget {
  const FirstScreenClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: <Widget>[
          Container(
            height: 30,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginGoogleButton();
                      }));
                    },
                    child: GestudeWidegetApp(
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginGoogleButton();
                        }));
                      },
                      text: "Créer un compte",
                    )),
                const SizedBox(
                  width: 10,
                ),
                GestudeWidegetApp(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Login();
                    }));
                  },
                  text: "Connexion".toUpperCase(),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  width: size.width,
                  height: size.height * 0.80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Deliver Pro",
                        style: GoogleFonts.pacifico(
                            fontSize: 60,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "livraison à la demande simple, rapide, éfficace ",
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginWidget();
                      }));
                    },
                    child: Text(
                      "Commencer avec Deliver Pro",
                      style: GoogleFonts.allan(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GestudeWidegetApp extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const GestudeWidegetApp({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          width: 130,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: kPrimaryWhite)),
          child: Text(text, style: const TextStyle(fontSize: 16))),
    );
  }
}
