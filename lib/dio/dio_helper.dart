import 'package:dio/dio.dart';
import 'package:ya_naseeb/core/utils/app_strings.dart';
import 'package:ya_naseeb/dio/end_points.dart';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: AppStrings.baseUrl,
      receiveDataWhenStatusError: true,
    ),
  );
  /////////////Auth/////////////////
  static Future<Response> register({
    required Map<String, dynamic> data,
  }) async {
    return dio.post(
      REGISTER,
      data: FormData.fromMap(data),
    );
  }

  static Future<Response> login({
    required Map<String, dynamic> data,
  }) async {
    return dio.post(
      LOGIN,
      data: FormData.fromMap(data),
    );
  }

  static Future<Response> logout(String token) async {
    return dio.post(
      LOGOUT,
      options: Options(
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
  }
}
