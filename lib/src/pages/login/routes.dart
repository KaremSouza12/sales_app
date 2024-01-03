import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:sales_app/src/pages/login/login_page.dart';
import 'package:sales_app/src/pages/login/register_page.dart';

final _getIt = GetIt.instance;

class LoginRoutes {
  const LoginRoutes._();

  static const login = '/login';

  static const register = '/login/register';
}

final loginRoutes = [
  GoRoute(
    path: LoginRoutes.login,
    builder: (context, state) => Loginpage(controller: _getIt.get()),
  ),
  GoRoute(
    path: LoginRoutes.register,
    builder: (context, state) => const RegisterPage(),
  ),
];
