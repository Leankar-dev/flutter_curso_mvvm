import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curso_mvvm/data/repositories/auth/auth_repository_remote.dart';
import 'package:flutter_curso_mvvm/data/services/api/api_client.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/screen/login_screen.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/view_models/login_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Curso MVVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(
        loginViewModel: LoginViewModel(
          authRepository: AuthRepositoryRemote(
            apiClient: ApiClient(apiUrl: 'https://dummyjson.com', dio: Dio()),
          ),
        ),
      ),
    );
  }
}
