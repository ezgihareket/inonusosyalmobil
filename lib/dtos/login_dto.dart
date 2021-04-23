/*class Users {
  int id;
  String username;
  String password;
  String jwt;

  Users({
this.id,
    this.username,
    this.password,
    this.jwt
  });

  Users.fromJson(Map<String, dynamic> json) {
id = json['id'];
    username = json['username'];
    password = json['password'];
    jwt = json['jwt'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['password'] = this.password;
    data['jwt'] = this.jwt;
    return data;
  }
}*/

/*class LoginResponse {
  final String jwt;
  final String error;

  LoginResponse({this.jwt, this.error});

  factory LoginResponse.fromJson(Map<String, dynamic> json){
    return LoginResponse(jwt: json["jwt"] != null ? json["jwt"]: "", error: json["error"] != null ? json["error"]: "",);
  }
  Map<String, dynamic> toJson(){

    Map<String, dynamic> map ={
      'jwt' : jwt.trim(),
      'error' : error.trim(),
    };
    return map;
  }
}
class LoginRequest{
  String username;
  String password;

  LoginRequest({
    this.username,
    this.password,
});

  Map<String, dynamic> toJson(){

    Map<String, dynamic> map ={
      'username' : username.trim(),
      'password' : password.trim(),
    };
    return map;
  }

}*/
