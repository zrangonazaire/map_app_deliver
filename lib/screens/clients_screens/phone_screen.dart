import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneClientClass extends StatelessWidget {
  const PhoneClientClass({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(5, size.height * 0.1, 5, 5),
                    child: Text(
                      "Bienvenu à Deliver Commencer, veuillez entrer votre numéro de mobile.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 25),
                  child: TextField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.pink,
                          size: 30,
                        ),
                        labelText: "Nom et prénoms"),
                    style: GoogleFonts.aBeeZee(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.7,
                      padding: const EdgeInsets.fromLTRB(5, 15, 15, 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: const Border(bottom: BorderSide.none)),
                      child: TextField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.pink,
                              size: 30,
                            ),
                            labelText: "Téléphone"),
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Valider",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
