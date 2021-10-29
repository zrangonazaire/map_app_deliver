import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:map_app_deliver/screens/clients_screens/signup_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../theme.dart';

//Widget for input
enum TypeClient { client, livreur, societeLivraison }

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final GlobalKey<ScaffoldState> _mainScaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final globalFormKey = GlobalKey<FormState>();

  TypeClient? _typeClient = TypeClient.client;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black54,
        key: _mainScaffoldKey,
        body: Container(
          padding: const EdgeInsets.only(top: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Card(
                      elevation: 2.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: SizedBox(
                        width: size.width * 0.85,
                        height: size.height * 0.7,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 0, 5),
                                child: Text(
                                  "Deliver Pro",
                                  style: GoogleFonts.sanchez(
                                      color: Colors.pinkAccent, fontSize: 30),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 0, 5),
                                child: const Text(
                                  "Bienvenu à Deliver Commencer, veuillez entrer votre numéro de mobile. Vous êtes ?",
                                  style: TextStyle(
                                      fontFamily: "SignikaSemiBold",
                                      fontSize: 20.0,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Client",
                                          style: GoogleFonts.sanchez(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Radio(
                                          value: TypeClient.client,
                                          groupValue: _typeClient,
                                          onChanged: (TypeClient? value) {
                                            setState(() {
                                              _typeClient = value;
                                            });
                                          }),
                                      Text(
                                        "Livreur",
                                        style: GoogleFonts.sanchez(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Radio(
                                          value: TypeClient.livreur,
                                          groupValue: _typeClient,
                                          onChanged: (TypeClient? value) {
                                            setState(() {
                                              _typeClient = value;
                                            });
                                          }),
                                      Text(
                                        "Société",
                                        style: GoogleFonts.sanchez(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      Radio(
                                          value: TypeClient.societeLivraison,
                                          groupValue: _typeClient,
                                          onChanged: (TypeClient? value) {
                                            setState(() {
                                              _typeClient = value;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 5.0,
                                    left: 25.0,
                                    right: 25.0),
                                child: TextField(
                                  focusNode: focusEmail,
                                  controller: emailController,
                                  //keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(
                                      fontFamily: "SignikaSemiBold",
                                      fontSize: 16.0,
                                      color: Colors.black),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        FontAwesomeIcons.user,
                                        color: Colors.black,
                                        size: 22.0,
                                      ),
                                      hintText: "Nom et prénoms",
                                      hintStyle: TextStyle(
                                          fontFamily: "SignikaSemiBold",
                                          fontSize: 18.0)),
                                ),
                              ),
                              Container(
                                width: 250.0,
                                height: 1.0,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0,
                                    bottom: 20.0,
                                    left: 25.0,
                                    right: 25.0),
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10,
                                  focusNode: focusPassword,
                                  controller: passwordController,
                                  style: GoogleFonts.maShanZheng(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16.0,
                                      color: Colors.black),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        FontAwesomeIcons.phone,
                                        color: Colors.black,
                                        size: 22.0,
                                      ),
                                      hintText: " Numéro de téléphone",
                                      hintStyle: TextStyle(
                                          fontFamily: "SignikaSemiBold",
                                          fontSize: 18.0)),
                                ),
                              ),
                              Container(
                                width: 250.0,
                                height: 0.70,
                                color: Colors.grey,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 60.0, bottom: 26.0),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: AppColours.colorStart,
                                          offset: Offset(1.0, 6.0),
                                          blurRadius: 20.0),
                                      BoxShadow(
                                          color: AppColours.colorEnd,
                                          offset: Offset(1.0, 6.0),
                                          blurRadius: 20.0),
                                    ],
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.pinkAccent,
                                          Colors.pinkAccent
                                        ],
                                        begin: FractionalOffset(0.2, 0.2),
                                        end: FractionalOffset(1.0, 1.0),
                                        stops: [0.1, 1.0],
                                        tileMode: TileMode.clamp)),
                                child: MaterialButton(
                                  highlightColor: Colors.transparent,
                                  splashColor: AppColours.colorEnd,
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 42.0),
                                    child: Text(
                                      "Valider",
                                      style: TextStyle(
                                          fontFamily: "SignikaSemiBold",
                                          color: Colors.white,
                                          fontSize: 22.0),
                                    ),
                                  ),
                                  onPressed: () =>
                                      displaySnackBar("Login clicked"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextButton(
                    child: const Text(
                      "Not have account?",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 18.0,
                          fontFamily: "SignikaRegular"),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      gradient: LinearGradient(
                          colors: [Colors.white, Colors.white],
                          begin: FractionalOffset(0.2, 0.2),
                          end: FractionalOffset(0.5, 0.5),
                          stops: [0.1, 0.5],
                          tileMode: TileMode.clamp)),
                  child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.pinkAccent,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontFamily: "SignikaSemiBold",
                            color: Colors.black,
                            fontSize: 22.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpWidget()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.white10,
                                Colors.white,
                              ],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(1.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        width: 100.0,
                        height: 1.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 16.0,
                              fontFamily: "WorkSansMedium"),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.white10,
                              ],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(1.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        width: 100.0,
                        height: 1.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                      child: GestureDetector(
                        onTap: () => displaySnackBar("Forgot clicked"),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: new Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                      child: GestureDetector(
                        onTap: () => displaySnackBar("Instagram clicked"),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                      child: GestureDetector(
                        onTap: () => displaySnackBar("Github clicked"),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                        onTap: () => displaySnackBar("Google clicked"),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            FontAwesomeIcons.google,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void displaySnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        value,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white, fontSize: 16.0, fontFamily: "SignikaRegular"),
      ),
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 3),
    ));
  }
}
