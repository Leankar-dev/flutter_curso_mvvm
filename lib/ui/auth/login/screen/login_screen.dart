import 'package:flutter/material.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/widgets/logo_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoContainer(),
          ],
        ),
      ),
    );
  }
}
