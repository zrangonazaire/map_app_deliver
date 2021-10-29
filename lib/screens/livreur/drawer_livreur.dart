import 'package:map_app_deliver/screens/components/head_profil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerLivreur extends StatelessWidget {
  const DrawerLivreur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            child: ProfilHead(),
          ),
          ListTileWidget(
            text: "Notification",
            icon: Icons.notifications,
            iconColor: Colors.black,
          ),
          ListTileWidget(
            text: "Langue",
            icon: Icons.public,
            iconColor: Colors.black,
          ),
          ListTileWidget(
            text: "Inviter des amis",
            icon: Icons.group_add,
            iconColor: Colors.black,
          ),
          ListTileWidget(
            text: "Support",
            icon: Icons.hearing,
            iconColor: Colors.black,
          ),
          SizedBox(
            height: 60,
          ),
          Divider(
            color: Colors.black,
            height: 5,
          ),
          ListTileWidget(
            text: "Deconnexion",
            icon: Icons.logout,
            iconColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String text;
  const ListTileWidget({
    Key? key,
    this.icon,
    this.iconColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
        size: 30,
      ),
      title: Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
