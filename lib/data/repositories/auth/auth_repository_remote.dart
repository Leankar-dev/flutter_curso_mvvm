// no clean arqhiteture chamamos de implementação remota, ou seja, a implementação que se comunica com a API, aqui de remote.

import 'package:flutter_curso_mvvm/data/repositories/auth/auth_repository.dart';
import 'package:flutter_curso_mvvm/data/services/api/api_client.dart';
import 'package:flutter_curso_mvvm/data/services/api/models/login_request.dart';
import 'package:flutter_curso_mvvm/utils/result.dart';

class AuthRepositoryRemote implements AuthRepository {
  final ApiClient _apiClient;

  const AuthRepositoryRemote({required ApiClient apiClient})
    : _apiClient = apiClient;

  @override
  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    // Cria o objeto de requisição para a API
    final loginRequest = LoginRequest(
      username: username,
      password: password,
      expireInMins: 30,
    );
    final result = await _apiClient.login(loginRequest);

    return result;
  }
}
