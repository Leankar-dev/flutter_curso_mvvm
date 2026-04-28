import 'package:dio/dio.dart';
import 'package:flutter_curso_mvvm/data/services/api/models/login_request.dart';
import 'package:flutter_curso_mvvm/data/services/api/models/login_response.dart';
import 'package:flutter_curso_mvvm/utils/result.dart';

class ApiClient {
  final String _apiUrl;
  final Dio _dio;

  const ApiClient({required String apiUrl, required Dio dio})
    : _apiUrl = apiUrl,
      _dio = dio;

  // metodo de serviço
  Future<Result<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final endpoint = '$_apiUrl/auth/login';

      final response = await _dio.post(endpoint, data: loginRequest.toJson());

      if (response.statusCode == 200) {
        final result = LoginResponse.fromJson(response.data);
        return Result.success(result);
      }
      return Result.error('Erro ao fazer login: ${response.statusCode}');
    } on Exception catch (e) {
      return Result.error('Erro ao fazer login: $e');
    }
  }
}
