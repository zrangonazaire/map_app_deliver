import 'package:map_app_deliver/screens/clients_screens/login/creer_compte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:map_app_deliver/screens/clients_screens/map_polyligne_drop.dart';

class DropAdress extends StatefulWidget {
  const DropAdress({Key? key}) : super(key: key);

  @override
  _DropAdressState createState() => _DropAdressState();
}

class _DropAdressState extends State<DropAdress> {
  final List _communes = [
    "Abobo",
    "Adjamé",
    "Anyama",
    "Attécoubé",
    "Bingerville",
    "Cocody",
    "Koumassi",
    "Marcory",
    "Plateau",
    "Port bouët",
    "Treichville",
    "Songon",
    "Yopougon"
  ];
  late List<DropdownMenuItem<String>> _menuCommune;
  late String _currentCommune;
  @override
  void initState() {
    _menuCommune = getMenuCommune();
    _currentCommune = _menuCommune[0].value!;
    super.initState();
  }

  List<DropdownMenuItem<String>> getMenuCommune() {
    List<DropdownMenuItem<String>> items = [];
    for (String communes in _communes) {
      items.add(DropdownMenuItem(
          value: communes,
          child: Text(
            communes,
            style:
                GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.bold),
          )));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Adress de livraison du colis"),
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Communes",
                      style: GoogleFonts.roboto(fontSize: 24),
                      textAlign: TextAlign.right,
                    ),
                    DropdownButton(
                      items: _menuCommune,
                      value: _currentCommune,
                      onChanged: changeCommunesItem,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizeBoxTextFiel(
                      hintText: "Nom et prénoms",
                      label: "Personne ressource",
                      prefixIcon: Icons.person,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizeBoxTextFiel(
                      hintText: "Numéro de téléphone ",
                      label: "Personne ressource",
                      prefixIcon: Icons.phone_android,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizeBoxTextFiel(
                      hintText: "Lieu de récupération ",
                      label: "Quartier de livraison du colis",
                      prefixIcon: Icons.map,
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
                    return const MapFactureColis();
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

  void changeCommunesItem(String? selectedCommune) {
    setState(() {
      _currentCommune = selectedCommune!;
    });
  }
}
