class LoginResponseModel {
  final String? token;
  final String? error;
  LoginResponseModel({
    this.token,
    this.error,
  });
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        token: json["token"] ?? "", error: json["error"] ?? "");
  }
}

class LogingRequestModel {
  String email;
  String password;
  LogingRequestModel({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim()
    };
    return map;
  }
}
