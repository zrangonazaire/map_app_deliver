import 'package:map_app_deliver/screens/livreur/direct_livreur.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';

class HomeWithouMap extends StatelessWidget {
  const HomeWithouMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryPink,
            bottom: const TabBar(
              tabs: [
                Text("Carte"),
                Text("Direct"),
                Text("Active"),
                Text("Historique"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              DirectLivreur(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
