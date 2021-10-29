import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:map_app_deliver/models/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LogingRequestModel requestModel) async {
    String url = "https://reqres.in/api/login";
    final response =
        await http.post(Uri.parse(url), body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Login ou mot de passe Incorrecte");
    }
  }
}
