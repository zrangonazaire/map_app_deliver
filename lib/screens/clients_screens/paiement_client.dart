import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:map_app_deliver/screens/clients_screens/home_client.dart';

class PaiementClient extends StatefulWidget {
  const PaiementClient({Key? key}) : super(key: key);

  @override
  _PaiementClientState createState() => _PaiementClientState();
}

enum ModeDePaiement { livraison, recuperation, mobile, wave }

class _PaiementClientState extends State<PaiementClient> {
  ModeDePaiement? _paiement = ModeDePaiement.recuperation;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Mode de paiement"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: size.height * 0.97,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(
                        Icons.payments,
                        size: 45,
                      ),
                      Text("Payer à la reception",
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Radio(
                          value: ModeDePaiement.recuperation,
                          groupValue: _paiement,
                          onChanged: (ModeDePaiement? value) {
                            setState(() {
                              _paiement = value;
                            });
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: size.height * 0.97,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(
                        Icons.signal_cellular_alt_outlined,
                        size: 45,
                      ),
                      Text("Payer a la livraison",
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Radio(
                          value: ModeDePaiement.livraison,
                          groupValue: _paiement,
                          onChanged: (ModeDePaiement? value) {
                            setState(() {
                              _paiement = value;
                            });
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: size.height * 0.97,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(
                        Icons.mobile_friendly,
                        size: 45,
                      ),
                      Text("Mobile",
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Radio(
                          value: ModeDePaiement.mobile,
                          groupValue: _paiement,
                          onChanged: (ModeDePaiement? value) {
                            setState(() {
                              _paiement = value;
                            });
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: size.height * 0.97,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(
                        Icons.waves,
                        size: 45,
                      ),
                      Text("Wave",
                          style: GoogleFonts.roboto(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Radio(
                          value: ModeDePaiement.wave,
                          groupValue: _paiement,
                          onChanged: (ModeDePaiement? value) {
                            setState(() {
                              _paiement = value;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
              width: size.width,
              height: size.height * 0.07,
              decoration: const BoxDecoration(color: Colors.pink),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(
                    Icons.arrow_left,
                    size: 50,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeClient();
                      }));
                    },
                    child: Text("Suivant",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
