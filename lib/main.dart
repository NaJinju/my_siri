import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_siri/modules/authentication/login/login_form_screen.dart';
import 'package:my_siri/modules/authentication/login/login_type_screen.dart';
import 'package:my_siri/modules/authentication/signup/signup_detail_form_screen.dart';
import 'package:my_siri/modules/authentication/signup/signup_form_screen.dart';
import 'package:my_siri/modules/authentication/signup/signup_type_screen.dart';
import 'package:my_siri/modules/authentication/signup/signup_verify_screen.dart';
import 'package:my_siri/modules/main/chat/chat_room_screen.dart';
import 'package:my_siri/modules/main/home/tabs/feed/slider_conroller.dart';
import 'package:my_siri/modules/main/main_screen.dart';
import 'package:my_siri/modules/splash/splash_screen.dart';

void main() {
  Get.put(SliderController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Map<String, WidgetBuilder> routes = {
    '/main': (context) => const MainScreen(),
    '/chatroom': (context) => const ChatRoomScreen(),
    '/login': (context) => const LoginTypeScreen(),
    '/login_form': (context) => LoginFormScreen(),
    '/signup': (context) => SignupTypeScreen(),
    '/signup_form': (context) => SignupFormScreen(),
    '/signup_verify': (context) => SignupVerifyScreen(),
    '/signup_detail_form': (context) => SignupDetailFormScreen(),
    '/splash': (context) => const SplashScreen(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/login',
      routes: routes,
    );
  }
}
