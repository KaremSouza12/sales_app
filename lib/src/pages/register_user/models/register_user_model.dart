class RegisterUserModel {
  RegisterUserModel({
    required this.name,
    required this.email,
    required this.password,
  });

  final String name;
  final String email;
  final String password;

  factory RegisterUserModel.fromJson(Map<String, dynamic> data) {
    final name = data['name'];
    final email = data['email'];
    final password = data['password'];

    return RegisterUserModel(name: name, email: email, password: password);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
