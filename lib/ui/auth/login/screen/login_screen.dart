import 'package:flutter/material.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/view_models/login_view_model.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/widgets/login_form_widget.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/widgets/logo_container.dart';

class LoginScreen extends StatefulWidget {
  final LoginViewModel loginViewModel;
  const LoginScreen({super.key, required this.loginViewModel});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              LogoContainer(),
              LoginFormWidget(loginViewModel: widget.loginViewModel),
            ],
          ),
        ),
      ),
    );
  }
}
