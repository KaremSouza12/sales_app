import 'package:get_it/get_it.dart';
import 'package:sales_app/src/service/Auth_service.dart';

final getIt = GetIt.instance;

setupProvidesr() {
  getIt.registerSingleton<AuthService>(AuthService());
}
