import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/challenge/challenge_screen.dart';
import 'package:my_siri/modules/main/chat/chat_screen.dart';
import 'package:my_siri/modules/main/home/home_screen.dart';
import 'package:my_siri/modules/main/liveklass_bottom_app_bar.dart';
import 'package:my_siri/modules/main/mypage/mypage_screen.dart';
import 'package:my_siri/modules/main/notification/notification_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  void _onTapNavigationTab(int selectedIndex) {
    setState(() {
      _pageController.jumpToPage(selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFFFB951),
          onPressed: () => _onTapNavigationTab(2),
          tooltip: 'Create',
          child: const Icon(Icons.flag_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: LiveKlassBottomAppBar(
          onTapNaviagtionTab: (int selectedIndex) =>
              _onTapNavigationTab(selectedIndex),
          fabLocation: FloatingActionButtonLocation.centerDocked,
        ),
        body: PageView(
          controller: _pageController,
          children: const [
            HomeScreen(),
            ChatScreen(),
            ChallengeScreen(),
            NotificationScreen(),
            MypageScreen(),
          ],
        ),
      ),
    );
  }
}
