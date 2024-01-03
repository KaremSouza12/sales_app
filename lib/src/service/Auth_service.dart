import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/src/pages/login/models/login_model.dart';
import 'package:sales_app/src/service/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends ChangeNotifier {
  AuthService({
    Dio? dio,
  }) : _dio = dio ?? Dio();

  final Dio _dio;
  bool isAuthenticated = false;

  Future<LoginModel> login(
      {required String email, required String password}) async {
    final prefes = await SharedPreferences.getInstance();
    try {
      Response response = await _dio.post(
        Api.loginRouteApi,
        data: {
          "email": email,
          "password": password,
        },
      );

      isAuthenticated = true;
      notifyListeners();
      final data = LoginModel.fromJson(response.data);

      if (data.accessToken != '') {
        await prefes.setString('token', data.accessToken);
      }

      return data;
    } on DioException catch (e) {
      return throw ('Erro ao fazer login: $e');
    }
  }

  logout() {
    isAuthenticated = false;
    notifyListeners();
  }
}
