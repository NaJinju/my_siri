import 'package:flutter/material.dart';
import 'package:my_siri/shared/constants/auth.dart';
import 'package:my_siri/shared/enum/widget_enum.dart';
import 'package:my_siri/shared/widgets/auth_buttons.dart';

class LoginTypeScreen extends StatelessWidget {
  const LoginTypeScreen({super.key});

  void _onTapSignupButton(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
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
            Column(
              children: [
                buildColumnAuthSocialButton(
                  screenType: AuthButtonScreenType.login,
                ),
                const SizedBox(
                  height: 24,
                ),
                buildRowAuthSocialButton(
                  screenType: AuthButtonScreenType.login,
                ),
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
                const Text('아직 회원이 아니신가요?'),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () => _onTapSignupButton(context),
                  child: const Text(
                    '회원가입',
                    style: TextStyle(color: Color(0XFF8860DE)),
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
