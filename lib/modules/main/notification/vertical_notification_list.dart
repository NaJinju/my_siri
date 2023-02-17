import 'package:flutter/material.dart';

class VerticalNotificationList extends StatelessWidget {
  const VerticalNotificationList({super.key, required this.data});
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
            color: const Color(0XFFFCFAFF),
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
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.network(item['imageUrl']),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${item['title']} ${item['title']} ${item['title']}',
                          style: const TextStyle(
                            color: Color(0XFF72777B),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '${item['viewCount']}분',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0XFFBBBFC3),
                          ),
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
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
