import 'package:map_app_deliver/Screens/components/head_text.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortefeuilleLivreur extends StatelessWidget {
  const PortefeuilleLivreur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Porteffeuille",
                      style: GoogleFonts.playfairDisplay(
                          color: kPrimaryWhite,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  Text("3000 XOF",
                      style: GoogleFonts.playfairDisplay(
                          color: kPrimaryWhite, fontSize: 20)),
                ],
              ),
              height: size.height * 0.1,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color: kPrimaryPink),
            ),
            SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                  Padding(padding: EdgeInsets.all(5.0)),
                  RowDetailWallet(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class RowDetailWallet extends StatelessWidget {
  const RowDetailWallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          const Icon(
            Icons.delivery_dining,
            color: kPrimaryPink,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          const HeadText(text: "Livraison colis"),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "200 XOF",
                style:
                    GoogleFonts.robotoMono(color: Colors.black, fontSize: 14),
                textAlign: TextAlign.right,
              ),
              Text("comission",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.robotoMono(
                      color: kPrimaryPink,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
      height: size.height * 0.08,
      width: size.width * 0.98,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: kPrimaryWhite),
    );
  }
}
