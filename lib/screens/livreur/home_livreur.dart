import 'package:map_app_deliver/screens/livreur/drawer_livreur.dart';
import 'package:map_app_deliver/screens/livreur/home_without_map.dart';

import 'package:map_app_deliver/screens/livreur/portefeuille_livreur.dart';
import 'package:map_app_deliver/screens/livreur/profil_livreur.dart';

import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';

class HomeLivreur extends StatefulWidget {
  const HomeLivreur({Key? key}) : super(key: key);

  @override
  _HomeLivreurState createState() => _HomeLivreurState();
}

class _HomeLivreurState extends State<HomeLivreur> {
  int index = 0;
  final List<Widget> _widgets = [screen1(), screen2(), screen3()];
  tapped(int tappedIndex) {
    setState(() {
      index = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const DrawerLivreur(),
        appBar: AppBar(
          backgroundColor: kPrimaryPink,
          actions: <Widget>[
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                height: 30,
                width: 100,
                child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: kPrimaryWhite)),
                    child: const Text("Dépôt", style: TextStyle(fontSize: 20))),
              ),
            )
          ],
        ),
        body: _widgets[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: tapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: kPrimaryPink,
                ),
                label: 'Home',
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: kPrimaryPink,
                ),
                label: 'portefeuille'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin,
                  color: kPrimaryPink,
                ),
                label: 'Paramètre'),
          ],
        ),
      ),
    );
  }
}

screen1() {
  return const Center(child: HomeWithouMap());
}

screen2() {
  return const Center(
    child: PortefeuilleLivreur(),
  );
}

screen3() {
  return const Center(
    child: ProfilLivreur(),
  );
}
