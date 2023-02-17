import 'package:flutter/material.dart';

class VerticalCourseList extends StatelessWidget {
  VerticalCourseList({super.key});
  final List<Map<String, dynamic>> data = [
    {
      'title': '나의 월급 독립 프로젝트',
      'content': '직장인 단타에 초점을 맞춘 기초 단계의 강의입니다. 하나씩 따라오시다 보면 큰 길...',
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675941944552.png',
      'totalCount': 8,
    },
    {
      'title': '초보 탈출 프로젝트',
      'content': "매주 토요일 새벽 5시 30분에 '라이브'로 계속 새로운 ‘초보 탈출 프로젝트' 강의가...",
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675941955560.png',
      'totalCount': 15,
    },
    {
      'title': '모닝 차트 10선 (유목민)',
      'content': '단순히 차트를 설명하는 게 아니라 수천, 수만, 수억개로 분화될 수 있는 차트를 3가지...',
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675941962128.png',
      'totalCount': 32,
    },
    {
      'title': '나도 차트를 읽고 싶다 (차읽남)',
      'content': '차트의 신으로 불려도 손색없는 남자. 하지만 어디에도 자신을 드러내지 않으며 조용히...',
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675941966726.png',
      'totalCount': 22,
    },
    {
      'title': '기본 강의+',
      'content': "10번씩 봐도 괜찮은 핵심 내용들을 모아두었습니다. ‘기본강의+’ 카테고리를 천천히 소...",
      'imageUrl':
          'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675941971331.png',
      'totalCount': 10,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(
            top: 18,
            bottom: 12,
            right: 16,
            left: 16,
          ),
          margin: const EdgeInsets.only(
            bottom: 24,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: const TextStyle(
                            color: Color(0XFF72777B),
                            fontWeight: FontWeight.w700,
                            fontSize: 15.5,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Text(
                          item['content'],
                          style: const TextStyle(
                            color: Color(0XFFBBBFC3),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 82,
                    height: 82,
                    child: Image.network(item['imageUrl']),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0XFFF1F1F2),
                      width: 1.0,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                margin: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.window,
                          color: Color(0XFF72777B),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '총 ${item["totalCount"]}회',
                          style: const TextStyle(
                            color: Color(0XFF72777B),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.lock,
                      color: Color(0XFF474B51),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
