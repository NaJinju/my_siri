import 'package:flutter/material.dart';
import 'package:my_siri/modules/authentication/login/login_type_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginTypeScreen(),
    );
  }
}
