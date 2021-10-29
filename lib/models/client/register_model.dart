class RegisterResponseModel {
  final String? name;
  final String? email;
  final String? password;
  final bool actived = false;
  final String? telephone;
  RegisterResponseModel({
    this.name,
    this.email,
    this.password,
    this.telephone,
  });
}

class RegisterRequestModel {
  final String? name;
  final String? email;
  final String? password;
  final bool actived = false;
  final String? telephone;
  RegisterRequestModel({
    this.name,
    this.email,
    this.password,
    this.telephone,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    return map;
  }
}
