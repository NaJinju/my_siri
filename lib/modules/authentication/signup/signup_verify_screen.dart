import 'package:flutter/material.dart';
import 'package:my_siri/shared/constants/auth.dart';
import 'package:my_siri/shared/widgets/auth_buttons.dart';

class SignupVerifyScreen extends StatelessWidget {
  SignupVerifyScreen({super.key});

  final TextEditingController _verifyNumberController = TextEditingController();

  void _onTapNextButton(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signup_detail_form');
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
              '회원가입',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '인증번호 입력',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              children: [
                Text(
                  'sr.kim@naver.com',
                  style: TextStyle(
                    color: Color(0xFFFFB951),
                  ),
                ),
                Text('으로 전송된 4자리 번호를 입력하세요.'),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: _verifyNumberController,
              decoration: const InputDecoration(
                  labelText: '인증번호', hintText: '인증 번호 4자리'),
            ),
            const SizedBox(
              height: 24,
            ),
            AuthButton(
              label: '다음',
              onTapButton: () => _onTapNextButton(context),
            ),
          ],
        ),
      ),
    );
  }
}
