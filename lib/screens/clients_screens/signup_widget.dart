import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map_app_deliver/theme.dart';

//Widget for input

class SignUpWidget extends StatefulWidget {
  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUpWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmPassword = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Container(
                  width: 360.00,
                  height: 480.00,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusName,
                          controller: nameController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              fontFamily: "SignikaSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              hintText: "Enter name",
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
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusEmail,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              fontFamily: "SignikaSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              hintText: "Enter email",
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
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusPassword,
                          controller: passwordController,
                          style: const TextStyle(
                              fontFamily: "SignikaSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.lock,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              hintText: "Enter password",
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
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusPassword,
                          controller: passwordController,
                          style: const TextStyle(
                              fontFamily: "SignikaSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: const Icon(
                                FontAwesomeIcons.lock,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              hintText: "Confirm password",
                              hintStyle: const TextStyle(
                                  fontFamily: "SignikaSemiBold",
                                  fontSize: 18.0)),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: <BoxShadow>[
                              const BoxShadow(
                                  color: AppColours.colorStart,
                                  offset: const Offset(1.0, 6.0),
                                  blurRadius: 20.0),
                              const BoxShadow(
                                  color: AppColours.colorEnd,
                                  offset: Offset(1.0, 6.0),
                                  blurRadius: 20.0),
                            ],
                            gradient: const LinearGradient(
                                colors: [
                                  AppColours.colorEnd,
                                  AppColours.colorStart
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
                              "Sign Up",
                              style: const TextStyle(
                                  fontFamily: "SignikaSemiBold",
                                  color: Colors.white,
                                  fontSize: 22.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.white10,
                          Colors.white,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "OR",
                    style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 16.0,
                        fontFamily: "WorkSansMedium"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white10,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: FlatButton(
              child: const Text(
                "Sign up with",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: "SignikaRegular"),
              ),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Icon(
                      FontAwesomeIcons.facebookF,
                      color: const Color(0xFF0084ff),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Icon(
                      FontAwesomeIcons.instagram,
                      color: const Color(0xFF0084ff),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Icon(
                      FontAwesomeIcons.github,
                      color: const Color(0xFF0084ff),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Icon(
                      FontAwesomeIcons.google,
                      color: const Color(0xFF0084ff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
