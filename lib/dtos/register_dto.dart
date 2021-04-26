class RegisterDto {
  String firstName;
  String lastName;
  String username;
  String email;
  String password;
  String phone;
  String gender;

  RegisterDto(
      {this.firstName,
        this.lastName,
        this.username,
        this.email,
        this.password,
        this.phone,
        this.gender});

  RegisterDto.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    return data;
  }
}