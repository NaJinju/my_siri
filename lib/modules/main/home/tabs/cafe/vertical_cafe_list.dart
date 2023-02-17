import 'package:flutter/material.dart';

class VerticalCafeList extends StatelessWidget {
  const VerticalCafeList({super.key, required this.data});
  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
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
            bottom: 2,
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
                        Row(
                          children: [
                            Text(
                              item['userName'],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0XFFBBBFC3),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              item['createdAt'],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0XFFBBBFC3),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '조회 ${item['viewCount']}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0XFFBBBFC3),
                              ),
                            )
                          ],
                        )
                        // Text(
                        //   item['content'],
                        //   style: const TextStyle(
                        //     color: Color(0XFFBBBFC3),
                        //     fontSize: 12,
                        //   ),
                        // ),
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
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 40,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF3F5F8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(item['commentCount'].toString()),
                          const Text(
                            '댓글',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0XFFBBBFC3),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
