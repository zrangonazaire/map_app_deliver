// ignore_for_file: prefer_const_constructors

import 'package:map_app_deliver/screens/clients_screens/description_paquet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelecttypeColis extends StatefulWidget {
  const SelecttypeColis({Key? key}) : super(key: key);

  @override
  _SelecttypeColisState createState() => _SelecttypeColisState();
}

enum TypeColis { document, package }

class _SelecttypeColisState extends State<SelecttypeColis> {
  TypeColis? _typeColis = TypeColis.document;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          height: size.height * 0.70,
          width: size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Document",
                      style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: TypeColis.document,
                        groupValue: _typeColis,
                        onChanged: (TypeColis? value) {
                          setState(() {
                            _typeColis = value;
                          });
                        }),
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: VerticalDivider(
                        width: 30,
                        color: Colors.pink,
                      ),
                    ),
                    Text(
                      "Paquet",
                      style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: TypeColis.package,
                        groupValue: _typeColis,
                        onChanged: (TypeColis? value) {
                          setState(() {
                            _typeColis = value;
                          });
                        }),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DescriptionPaquet();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
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
          ),
        ),
      ),
    );
  }
}
