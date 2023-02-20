import 'package:flutter/material.dart';
import 'package:my_siri/shared/constants/auth.dart';
import 'package:my_siri/shared/enum/widget_enum.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.label,
    required this.onTapButton,
  });

  final String label;
  final VoidCallback onTapButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        margin: const EdgeInsets.only(
          bottom: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0XFF18181C).withOpacity(0.16),
          ),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFFFB951),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class AuthSocialButton extends StatelessWidget {
  const AuthSocialButton({
    super.key,
    required this.label,
    required this.imageUrl,
    required this.buttonType,
    required this.screenType,
  });

  final String label, imageUrl;
  final AuthButtonType buttonType;
  final AuthButtonScreenType screenType;

  void _onTapEmailLogin(BuildContext context) {
    if (screenType == AuthButtonScreenType.login) {
      Navigator.pushReplacementNamed(context, '/login_form');
    } else {
      Navigator.pushReplacementNamed(context, '/signup_form');
    }
  }

  @override
  Widget build(BuildContext context) {
    return buttonType == AuthButtonType.full
        ? GestureDetector(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              margin: const EdgeInsets.only(
                bottom: 8,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0XFF18181C).withOpacity(0.16),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.network(imageUrl),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(screenType == AuthButtonScreenType.login
                      ? '$label로 로그인'
                      : '$label로 가입하기')
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () => _onTapEmailLogin(context),
            child: Container(
              width: 52,
              height: 52,
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(52),
                border: Border.all(
                  color: const Color(0XFF18181C).withOpacity(0.16),
                ),
              ),
              child: SizedBox(
                height: 24,
                width: 24,
                child: Image.network(imageUrl),
              ),
            ),
          );
  }
}

Column buildColumnAuthSocialButton({required AuthButtonScreenType screenType}) {
  List<Widget> children = [];

  for (var i = 0; i < localSocialLogin.length; i++) {
    var item = localSocialLogin[i];
    children.add(
      GestureDetector(
        onTap: () {},
        child: AuthSocialButton(
          buttonType: AuthButtonType.full,
          screenType: screenType,
          imageUrl: item['imageUrl']!,
          label: item['label']!,
        ),
      ),
    );
  }

  return Column(children: children);
}

Row buildRowAuthSocialButton({required AuthButtonScreenType screenType}) {
  List<Widget> children = [];

  for (var i = 0; i < globalSocialLogin.length; i++) {
    var item = globalSocialLogin[i];
    children.add(
      AuthSocialButton(
          buttonType: AuthButtonType.circle,
          screenType: screenType,
          imageUrl: item['imageUrl']!,
          label: item['label']!),
    );
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: children,
  );
}
