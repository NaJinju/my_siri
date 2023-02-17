import 'package:flutter/material.dart';

class VerticalLiveList extends StatelessWidget {
  VerticalLiveList({super.key});
  final List<Map<String, dynamic>> data = [
    {
      'title': 'Signal Report “지역화에 맞춘 시야로.. 중국 리오프닝에 점점 초점을”',
      'liveDateTime': '1월 3일(화) 06:00 AM',
      'isNowLive': true
    },
    {
      'title': 'Signal Report “종목 장세는 이미 시작, 10일간 모은다는 생각으로 진행”',
      'liveDateTime': '1월 2일(월) 06:00 AM',
      'isNowLive': false
    },
    {
      'title': 'Signal Report “2023년 새 술은 새 부대에, 새로운 마음으로 시작하시죠”',
      'liveDateTime': '1월 1일(일) 06:00 AM',
      'isNowLive': false
    },
    {
      'title': 'Signal Report “네이버 메일 뉴스레터 함께 봅시다. 올해 고생하셨어요”',
      'liveDateTime': '12월 29일(목) 06:00 AM',
      'isNowLive': false
    },
    {
      'title': 'Signal Report “쫄 필요 없다고 했죠? 2023년 전망 꼭 보세요”',
      'liveDateTime': '12월 28일(수) 06:00 AM',
      'isNowLive': false
    },
    {
      'title': 'Signal Report “여전히 쫄 필요가 없다.. 내년 괜찮다"',
      'liveDateTime': '12월 27일(화) 06:00 AM',
      'isNowLive': false
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
            color: item['isNowLive'] ? const Color(0XFF7357F5) : Colors.white,
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
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFF4087FC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.videocam,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Text(
                      item['title'],
                      style: TextStyle(
                        color: item['isNowLive']
                            ? Colors.white
                            : const Color(0XFF72777B),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: item['isNowLive']
                        ? Colors.white
                        : const Color(0XFFBBBFC3),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item['liveDateTime'],
                    style: TextStyle(
                      color: item['isNowLive']
                          ? Colors.white
                          : const Color(0XFFBBBFC3),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 37,
                      decoration: BoxDecoration(
                        color: item['isNowLive']
                            ? Colors.white
                            : const Color(0XFFFAF5FF),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle button press here
                        },
                        child: Text(
                          item['isNowLive'] ? '입장하기' : '다시 보기',
                          style: TextStyle(
                            color: item['isNowLive']
                                ? const Color(0XFF7357F5)
                                : const Color(0XFF9E77ED),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
