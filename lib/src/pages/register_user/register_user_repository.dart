import 'package:dio/dio.dart';
import 'package:sales_app/src/pages/register_user/models/register_user_model.dart';
import 'package:sales_app/src/service/api_service.dart';

class RegisterUserRepository {
  RegisterUserRepository({Dio? dio}) : _dio = dio ?? Dio();
  final Dio _dio;

  Future<RegisterUserModel> createUser(
      {required String name,
      required String email,
      required String password}) async {
    try {
      Response response = await _dio.post(
        Api.createUser,
        data: {"name": name, "email": email, "password": password},
      );
      final data = RegisterUserModel.fromJson(response.data);

      return data;
    } on DioException catch (e) {
      return throw ('Error: $e');
    }
  }
}
