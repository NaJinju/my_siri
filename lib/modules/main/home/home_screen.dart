import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/home/tabs/cafe/cafe_tab.dart';
import 'package:my_siri/modules/main/home/tabs/course/course_tab.dart';
import 'package:my_siri/modules/main/home/tabs/feed/feed_tab.dart';
import 'package:my_siri/modules/main/home/tabs/live/live_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0XFF72777B),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Color(0XFF93979B),
            indicatorWeight: 3.0,
            labelColor: Color(0XFF72777B),
            tabs: [
              SizedBox(
                width: 50,
                child: Tab(
                  text: '피드',
                ),
              ),
              SizedBox(
                width: 50,
                child: Tab(
                  text: '라이브',
                ),
              ),
              SizedBox(
                width: 50,
                child: Tab(
                  text: '코스',
                ),
              ),
              SizedBox(
                width: 50,
                child: Tab(
                  text: '카페',
                ),
              ),
              SizedBox(
                width: 50,
                child: Tab(
                  text: '맴버십',
                ),
              ),
              SizedBox(
                width: 50,
                child: Tab(
                  text: '정보',
                ),
              ),
            ],
          ),
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '유목민의 시그널 리포트',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            SizedBox(
              width: 50,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0XFFB1B8C0),
                ),
              ),
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            FeedTab(),
            LiveTab(),
            CourseTab(),
            CafeTab(),
            Icon(Icons.directions_rounded),
            Icon(Icons.directions_rounded),
          ],
        ),
      ),
    );
  }
}
