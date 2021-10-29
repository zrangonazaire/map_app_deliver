// ignore_for_file: prefer_const_constructors

import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';

class ProfilLivreur extends StatelessWidget {
  const ProfilLivreur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ExpansionTile(
                  // backgroundColor: Colors.pink[100],
                  collapsedBackgroundColor: Colors.pink.shade100,

                  tilePadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: const Text(
                    "Informations personnelles",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  children: const [
                    TextFormFieldPersonnel(
                      labelText: "Nom et prénoms",
                      icon: Icons.person,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Téléphone",
                      icon: Icons.phone,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "E-mail",
                      icon: Icons.mail,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Date de naissance",
                      icon: Icons.calendar_today,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Mot de passe",
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                  ],
                ),
                Divider(
                  height: 2,
                  color: kPrimaryPink,
                ),
                ExpansionTile(
                  // backgroundColor: Colors.pink[100],
                  collapsedBackgroundColor: Colors.pink.shade100,

                  tilePadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: const Text(
                    "Informations Professionnelles",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  children: const [
                    TextFormFieldPersonnel(
                      labelText: "Année d'optention du permis",
                      icon: Icons.date_range,
                    ),
                    TextFormFieldPersonnel(
                        labelText: "Type de permis",
                        icon: Icons.format_list_numbered),
                  ],
                ),
                Divider(
                  height: 2,
                  color: kPrimaryPink,
                ),
                ExpansionTile(
                  // backgroundColor: Colors.pink[100],
                  collapsedBackgroundColor: Colors.pink.shade100,

                  tilePadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: const Text(
                    "Véhicules - Autos",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  children: const [
                    TextFormFieldPersonnel(
                      labelText: "Type de vehicule",
                      icon: Icons.lock,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Numéro d'immatriculation",
                      icon: Icons.near_me_disabled_rounded,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Année de sortie",
                      icon: Icons.calendar_today,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Numéro du chassis",
                      icon: Icons.chair,
                    ),
                    TextFormFieldPersonnel(
                      labelText: "Date de la dernière visite",
                      icon: Icons.calendar_today,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class TextFormFieldPersonnel extends StatelessWidget {
  final String? labelText;
  final IconData? icon;
  final bool obscureText;
  const TextFormFieldPersonnel({
    Key? key,
    this.labelText,
    this.icon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.pink,
          ),
          labelText: labelText),
    );
  }
}
