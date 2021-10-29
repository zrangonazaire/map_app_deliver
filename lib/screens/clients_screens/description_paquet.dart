import 'package:map_app_deliver/screens/clients_screens/pickup_adress.dart';
import 'package:map_app_deliver/screens/clients_screens/login/creer_compte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPaquet extends StatelessWidget {
  const DescriptionPaquet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Description du colis"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizeBoxTextFiel(
                      hintText: "Hauteur en centimètre",
                      label: "Hauteur en centimètre",
                      prefixIcon: Icons.height,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizeBoxTextFiel(
                      hintText: "Largeur en centimètre",
                      label: "Largeur en centimètre",
                      prefixIcon: Icons.widgets,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizeBoxTextFiel(
                      hintText: "Description ",
                      label: "Description  du colis",
                      prefixIcon: Icons.description,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizeBoxTextFiel(
                      hintText: "Poids",
                      label: "Poids du colis en kg",
                      prefixIcon: Icons.line_weight,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PickUpAdress();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.pink, width: 2)),
                  child: Text(
                    "Suivant",
                    style: GoogleFonts.roboto(
                        color: Colors.pink,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
