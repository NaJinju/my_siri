import 'package:flutter/material.dart';
import 'package:my_siri/shared/constants/auth.dart';
import 'package:my_siri/shared/widgets/radio_group.dart';

class SignupDetailFormScreen extends StatelessWidget {
  SignupDetailFormScreen({super.key});
  final bool checkboxValue = true;

  final TextEditingController _nickNameController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  void _onTapComplete(BuildContext context) {
    Navigator.pushNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
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
              TextField(
                controller: _nickNameController,
                decoration: const InputDecoration(
                  labelText: '닉네임',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _birthdayController,
                decoration: const InputDecoration(
                  labelText: '생년월일',
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
                height: 40,
              ),
              const RadioGroup(),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: '휴대폰 번호',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // 14age checkbox
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0XFF8860DE),
                    value: checkboxValue,
                    onChanged: (newValue) {
                      print(newValue);
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('[필수] 서비스 이용약관'),
                ],
              ),
              // 14age checkbox
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0XFF8860DE),
                    value: checkboxValue,
                    onChanged: (newValue) {
                      print(newValue);
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('[필수] 개인정보 수집・이용 동의'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () => _onTapComplete(context),
          child: Container(
            color: const Color(0XFF8860DE),
            height: 52,
            child: const Center(
              child: Text(
                '가입하기',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
