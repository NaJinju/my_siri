import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class VerticalFeedList extends StatelessWidget {
  VerticalFeedList({super.key});
  final _scrollController = ScrollController();
  // final List<Map<String, dynamic>> _data = [];
  final _data = RxList<Map<String, dynamic>>([]);

  void _fetchMoreData() async {
    await Future.delayed(const Duration(seconds: 5));

    _data.addAll(sampleData);
  }

  final List<Map<String, dynamic>> sampleData = [
    {
      'title': '[인사이트] 초보 투자자를 위한 제언 ‘CES2023셀온 주의’',
      'content': '5일(현지시각) 개최를 앞둔 CES2023과 관련한 기사들이 삼성, LG를 비롯해 다양한 기업..',
      'regdate': '2023.01.03',
      'isFree': true,
      'likeCount': 78,
      'commentCount': 5,
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675817526531.png',
    },
    {
      'title': '[Audio] 2023.01.03(화) 증권사 리포트 “세림B&G, 친환경 부문 성..',
      'content': '음원지원을 업데이트했습니다. 음원 지원 콘텐츠의 경우 UI/UX 이슈로 페이월을 거의..',
      'regdate': '2023.01.03',
      'isFree': false,
      'likeCount': 42,
      'commentCount': 1,
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675817545864.png',
    },
    {
      'title': '[바이오 인사이트] 한번에 끝나는 “임상시험 관련 용어와 개념 정리"',
      'content': '안녕하세요. 파이펫입니다. 오늘은 신약개발 바이오기업들이 진행하는 임상에서 자주 나..',
      'regdate': '2023.01.03',
      'isFree': true,
      'likeCount': 35,
      'commentCount': 8,
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675817537476.png',
    },
    {
      'title': '[인사이트] 초보 투자자를 위한 제언 ‘CES2023셀온 주의’',
      'content': '5일(현지시각) 개최를 앞둔 CES2023과 관련한 기사들이 삼성, LG를 비롯해 다양한 기업..',
      'regdate': '2023.01.03',
      'isFree': true,
      'likeCount': 10,
      'commentCount': 20,
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675817532572.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: sampleData.length,
      itemBuilder: (context, index) {
        final item = sampleData[index];
        // return Text(item['title']);
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 12,
            right: 16,
            left: 16,
          ),
          margin: const EdgeInsets.only(
            bottom: 12,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: const TextStyle(
                            color: Color(0XFF72777B),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          item['content'],
                          style: const TextStyle(
                            color: Color(0XFFBBBFC3),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 82,
                    height: 82,
                    child: Image.network(item['imageUrl']),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['regdate'],
                    style: const TextStyle(
                      color: Color(0XFFBBBFC3),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Color(0XFFCFD2D6),
                      ),
                      Text(
                        item['likeCount'].toString(),
                        style: const TextStyle(
                          color: Color(0XFFCFD2D6),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Icon(
                        Icons.sms_rounded,
                        color: Color(0XFFCFD2D6),
                      ),
                      Text(
                        item['commentCount'].toString(),
                        style: const TextStyle(
                          color: Color(0XFFCFD2D6),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
