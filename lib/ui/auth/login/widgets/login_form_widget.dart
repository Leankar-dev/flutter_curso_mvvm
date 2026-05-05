import 'package:flutter/material.dart';
import 'package:flutter_curso_mvvm/ui/auth/login/view_models/login_view_model.dart';

class LoginFormWidget extends StatefulWidget {
  final LoginViewModel loginViewModel;
  const LoginFormWidget({super.key, required this.loginViewModel});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 16,
        children: [
          Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: 8),
                  Text('Usuário'),
                ],
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu usuário';
                  }
                  return null;
                },
                controller: _usernameController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.lock),
                  SizedBox(width: 8),
                  Text('Senha'),
                ],
              ),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua senha';
                  }
                  return null;
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
                obscureText: true,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            onPressed: _validadeForm,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  void _validadeForm() {
    if (_formKey.currentState!.validate() == true) {
      final username = _usernameController.text;
      final password = _passwordController.text;
      widget.loginViewModel.login((username, password), password);
    }
  }
}
