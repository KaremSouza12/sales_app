import 'package:get_it/get_it.dart';
import 'package:sales_app/src/pages/login/controller/login_controller.dart';

final _getIt = GetIt.instance;
void loginDependencies() {
  _getIt.registerFactory<LoginController>(
      () => LoginController(authService: _getIt.get()));
}
