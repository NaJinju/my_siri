import 'package:flutter/material.dart';
import 'package:my_siri/shared/constants/auth.dart';
import 'package:my_siri/shared/enum/widget_enum.dart';
import 'package:my_siri/shared/widgets/auth_buttons.dart';

class SignupTypeScreen extends StatelessWidget {
  SignupTypeScreen({super.key});
  bool checkboxValue = true;

  void _onTapLoginButton(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
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
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            // 14age checkbox
            Row(
              children: [
                Checkbox(
                  activeColor: const Color(0xFFFFB951),
                  value: checkboxValue,
                  onChanged: (newValue) {
                    print(newValue);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('만 14세 이상입니다.'),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                buildColumnAuthSocialButton(
                    screenType: AuthButtonScreenType.signup),
                const SizedBox(
                  height: 24,
                ),
                buildRowAuthSocialButton(
                    screenType: AuthButtonScreenType.signup),
              ],
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
                const Text('이미 계정이 있으신가요?'),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () => _onTapLoginButton(context),
                  child: const Text(
                    '로그인',
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
