import 'package:map_app_deliver/screens/components/normal_button.dart';
import 'package:map_app_deliver/constants.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DirectLivreur extends StatelessWidget {
  const DirectLivreur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const <Widget>[
              Padding(padding: EdgeInsets.all(10.0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.96,
      height: 120,
      decoration: const BoxDecoration(
          color: kPrimaryWhite,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[RowAcept(), RowMontant(), DestinationRow()],
      ),
    );
  }
}

class DestinationRow extends StatelessWidget {
  const DestinationRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 25,
      decoration: const BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.all(Radius.circular(0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              " de koumassi",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Text(
            "à",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, fontSize: 18, color: kPrimaryPink),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text(
              "yopougon",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}

class RowMontant extends StatelessWidget {
  const RowMontant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            children: <Widget>[
              Text(
                "Mode de paiement",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, color: kPrimaryPink),
              ),
              Text("Paiement à la livraison",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, color: Colors.black)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Montant",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, color: kPrimaryPink),
              ),
              Text("2000 XOF",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, color: Colors.black)),
            ],
          ),
        )
      ],
    );
  }
}

class RowAcept extends StatelessWidget {
  const RowAcept({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: const Icon(
            Icons.delivery_dining,
            color: kPrimaryPink,
            size: 40,
          ),
        ),
        Text(
          "DELIV01544".toUpperCase(),
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          width: size.width * 0.3,
          child: ButtonNormal(
            press: () => shoCustomDialog(context),
            text: "Détail",
            backgroundColor: kPrimaryPink,
          ),
        ),
      ],
    );
  }

  void shoCustomDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white70,
                      child: const Icon(
                        Icons.account_balance_wallet,
                        size: 60,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                      child: SizedBox.expand(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'title',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: kPrimaryPink),
                                child: const Text('Okay'),
                                onPressed: () => {Navigator.of(context).pop()},
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
}
