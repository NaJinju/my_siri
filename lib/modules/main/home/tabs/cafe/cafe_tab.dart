import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/home/tabs/cafe/vertical_cafe_list.dart';
import 'package:my_siri/shared/temp_data/sample_cafe_data.dart';

class CafeTab extends StatelessWidget {
  const CafeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              title: null,
              backgroundColor: Colors.white,
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Color(0XFF93979B),
                    indicatorWeight: 1.0,
                    labelColor: Color(0XFF72777B),
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        child: Tab(
                          text: '전체글',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        child: Tab(
                          text: '초급용',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        child: Tab(
                          text: '중급이상',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        child: Tab(
                          text: '공지',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: TabBarView(
              children: [
                VerticalCafeList(data: SampleCafeData.data1),
                VerticalCafeList(data: SampleCafeData.data2),
                VerticalCafeList(data: SampleCafeData.data3),
                VerticalCafeList(data: SampleCafeData.data4),
              ],
            ),
          )),
    );
  }
}
