import 'package:map_app_deliver/api/api_service.dart';
import 'package:map_app_deliver/models/login_model.dart';
import 'package:map_app_deliver/progress_hud.dart';

import 'package:map_app_deliver/screens/components/sign_up_button.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = true;
  late LogingRequestModel requestModel;
  bool isApiCallProssess = false;
  @override
  void initState() {
    super.initState();
    requestModel = LogingRequestModel(email: "", password: "");
  }

  final globalFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProssess,
      opacity: 0.3,
    );
  }

  Widget _uiSetup(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Form(
            key: globalFormKey,
            child: Column(
              children: [
                Container(
                  height: size.height * 0.90,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            offset: Offset(1, 5))
                      ],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: size.height * 0.10,
                          ),
                          Text(
                            "Connexion",
                            style: GoogleFonts.pacifico(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          //LOGIN
                          TextFormField(
                            onSaved: (input) =>
                                requestModel.email = input.toString(),
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                            obscureText: false,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                label: Text("Téléphone"),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kPrimaryPink, width: 2.0)),
                                hintText: "Téléphone",
                                fillColor: kPrimaryWhite,
                                filled: true),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                          TextFormField(
                            onSaved: (input) =>
                                requestModel.password = input.toString(),
                            keyboardType: TextInputType.text,
                            validator: (input) => input!.length < 3
                                ? "Mot de  passe doit être supérieur à 3"
                                : null,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                            obscureText: hidePassword,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hidePassword = !hidePassword;
                                      });
                                    },
                                    icon: Icon(hidePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                label: const Text("Mot de passe"),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kPrimaryPink, width: 2.0)),
                                hintText: "Mot de passe",
                                fillColor: kPrimaryWhite,
                                filled: true),
                          ),

                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Text(
                            "Mot de passe oublié ?",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: kPrimaryWhite,
                                fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: size.width * 0.7,
                                child: SignInButtonWidget(
                                  press: () {
                                    if (validateAndSave()) {
                                      setState(() {
                                        isApiCallProssess = true;
                                      });
                                      APIService apiService = APIService();
                                      apiService
                                          .login(requestModel)
                                          .then((value) {
                                        setState(() {
                                          isApiCallProssess = false;
                                        });
                                        if (value.token!.isNotEmpty) {
                                          final snackBar = SnackBar(
                                              content: const Text(
                                                  "Connexion réussie"));

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        } else {
                                          final snackBar = SnackBar(
                                              content:
                                                  Text(value.error.toString()));

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }
                                      });

                                      print(requestModel.toJson());
                                    }
                                  },
                                  backgroundColor: Colors.blue,
                                  icon: Icons.login,
                                  iconColor: Colors.black,
                                  text: "Se connecter",
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.7,
                                child: SignInButtonWidget(
                                  press: () {},
                                  text: "Créer un compte",
                                  icon: Icons.account_circle,
                                  iconColor: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
