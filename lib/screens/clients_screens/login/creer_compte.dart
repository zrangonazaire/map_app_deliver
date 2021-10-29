import 'package:map_app_deliver/screens/components/normal_button.dart';
import 'package:map_app_deliver/screens/livreur/verif_sms.dart';
import 'package:map_app_deliver/screens/clients_screens/login/components/text_field_form.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginGoogleButton extends StatelessWidget {
  const LoginGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Text(
                            "Connexion",
                            style: GoogleFonts.pacifico(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          Text(
                            "Créer un compte",
                            style: GoogleFonts.pacifico(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          const SizeBoxTextFiel(
                            hintText: "Nom et prénoms",
                            label: "Nom et prénoms",
                            prefixIcon: Icons.person_add,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const SizeBoxTextFiel(
                            hintText: "Email",
                            prefixIcon: Icons.mail,
                            label: "Email",
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const SizeBoxTextFiel(
                            hintText: "Téléphone",
                            label: "Téléphone",
                            prefixIcon: Icons.phone,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const SizeBoxTextFiel(
                            hintText: "Mot de passe",
                            obscureText: true,
                            label: "Mot de passe",
                            prefixIcon: Icons.lock_open,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "s'enregistrer avec numéro de téléphone",
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          ButtonNormal(
                            text: "Valider",
                            color: kPrimaryWhite,
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LivreurSmsVerif();
                              }));
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "Un code de verification à été envoyé",
                            style: GoogleFonts.roboto(
                                fontSize: 14, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizeBoxTextFiel extends StatelessWidget {
  final Color? color, fillColor;
  final String? hintText;
  final IconData? prefixIcon;
  final String label;
  final bool obscureText;
  const SizeBoxTextFiel({
    Key? key,
    this.color = Colors.black,
    this.fillColor = Colors.white,
    this.hintText = "Numéro de téléphone",
    this.prefixIcon = Icons.phone,
    this.obscureText = false,
    this.label = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormFieldWidget(
        color: color,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        hintText: hintText,
        obscureText: obscureText,
        label: label,
      ),
    );
  }
}
