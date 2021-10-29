import 'package:flutter/material.dart';
import 'package:map_app_deliver/screens/clients_screens/home_client_orders.dart';

class HomeClient extends StatefulWidget {
  const HomeClient({Key? key}) : super(key: key);

  @override
  _HomeClientState createState() => _HomeClientState();
}

class _HomeClientState extends State<HomeClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.badge),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                )
              ]),
            ),
            body: const TabBarView(children: [
              Tab(
                icon: Icon(Icons.home),
              ),
              HomeClientOrder(),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              )
            ]),
          )),
    );
  }
}
