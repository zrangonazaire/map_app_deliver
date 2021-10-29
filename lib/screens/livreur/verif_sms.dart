import 'package:map_app_deliver/screens/components/head_text.dart';
import 'package:map_app_deliver/screens/components/normal_button.dart';
import 'package:map_app_deliver/screens/livreur/home_livreur.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LivreurSmsVerif extends StatelessWidget {
  const LivreurSmsVerif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Form(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.90,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      const HeadText(
                        text: "Vérification",
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "Entrer le code de vérification envoyé par SMS",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: TextformFieldSms(),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: TextformFieldSms(),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: TextformFieldSms(),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: TextformFieldSms(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vous n'avez pas recu de sms ?",
                            style:
                                GoogleFonts.roboto(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Revoyer",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ButtonNormal(
                        text: "Verifier",
                        color: kPrimaryWhite,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeLivreur();
                          }));
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class TextformFieldSms extends StatelessWidget {
  const TextformFieldSms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5.0)),
          fillColor: kPrimaryWhite,
          filled: true),
    );
  }
}
