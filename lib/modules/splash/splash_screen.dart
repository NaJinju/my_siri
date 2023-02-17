import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const splashImageUrl =
      'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1676423139504.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      child: Center(
        child: Image.network(splashImageUrl),
      ),
    );
  }
}
