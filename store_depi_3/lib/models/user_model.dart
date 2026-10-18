class UserModel {
  ///-------------------variables==============
  String? token;

  ///===================constructor default==============

  UserModel(this.token);

  ///===================named constructor=======================
  UserModel.formJson(Map<String, dynamic> json) {
    token = json["refresh_token"];
  }
}