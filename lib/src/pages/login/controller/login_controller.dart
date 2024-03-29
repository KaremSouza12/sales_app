import 'package:sales_app/src/service/Auth_service.dart';

class LoginController {
  LoginController({
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;

  Future<void> login({required String email, required String password}) async {
    await _authService.login(email: email, password: password);
  }

  Future<void> logout() async {
    await _authService.logout();
  }
}
