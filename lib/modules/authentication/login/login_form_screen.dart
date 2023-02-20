import 'package:flutter/material.dart';
import 'package:my_siri/shared/constants/auth.dart';
import 'package:my_siri/shared/widgets/auth_buttons.dart';

class LoginFormScreen extends StatelessWidget {
  LoginFormScreen({super.key});

  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onTapLoginButton(BuildContext context) {
    // print(_idController.value.text);
    Navigator.pushReplacementNamed(context, '/main');
  }

  void _onTapSignupButton(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 64,
            ),
            SizedBox(
              height: 32,
              child: Image.network(logoImageUrl),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              '로그인',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: _idController,
              decoration: const InputDecoration(
                labelText: '아이디',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: '비밀번호',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // authbutton
            AuthButton(
              label: '로그인',
              onTapButton: () => _onTapLoginButton(context),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(child: Text('비밀번호 재설정')),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('아직 회원이 아니신가요?'),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () => _onTapSignupButton(context),
                  child: const Text(
                    '회원가입',
                    style: TextStyle(color: Color(0xFFFFB951)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
