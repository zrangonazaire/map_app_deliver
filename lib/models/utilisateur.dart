// ignore: file_names
import 'dart:convert';

class ResponseUtilisateurModel {
  String? token;
  String? error;

  ResponseUtilisateurModel({
    this.token,
    this.error,
  });
  factory ResponseUtilisateurModel.fromJson(Map<String, dynamic> json) {
    return ResponseUtilisateurModel(
        token: json['token'] ?? "", error: json['error'] ?? "");
  }
}

class RequestUtilisateurModel {
  int? id;
  String username;
  String? email;
  String? password;
  String? checkOTP;
  bool? actived;
  DateTime? dateCreation;
  String telephone;
  String? roles;
  RequestUtilisateurModel(
      {required this.username, required this.telephone, this.actived});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {'username': username, 'telephone': telephone};
    return map;
  }
}
