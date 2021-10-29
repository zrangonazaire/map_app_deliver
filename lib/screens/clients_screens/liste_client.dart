import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  List<dynamic> litesUser = [];
  @override
  void initState() {
    super.initState();
    chargerUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: Center(
        child: litesUser == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: (litesUser == null) ? 0 : this.litesUser.length,
                itemBuilder: (context, idex) {
                  return Card(
                    color: Colors.white,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(this.litesUser[idex]['nomPrenomUser'])),
                  );
                },
              ),
      ),
    );
  }

  void chargerUser() {
    String url = "http://192.168.137.137:8090/utilisateurs";
    http.get(Uri.parse(url)).then((res) {
      setState(() {
        litesUser = json.decode(res.body);
        print("************************");
        print(litesUser);
      });
    }).catchError((err) {
      print(err);
    });
  }
}
