import 'package:flutter/material.dart';
import 'package:my_siri/shared/temp_data/sample_chat_room_data.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({super.key});

  static const data = SampleChatRoomData.data1;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
              height: 28,
            ),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: item['type'] == 'OUT'
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              children: [
                item['type'] == 'OUT'
                    ? SizedBox(
                        width: 48,
                        height: 48,
                        child: Image.network(item['imageUrl']),
                      )
                    : Container(),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    item['type'] == 'OUT'
                        ? Text(item['userName'])
                        : Container(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Color(0XFFF8F9FA),
                      ),
                      child: Column(
                        children: [
                          Text(
                            item['content'],
                            softWrap: true,
                            style: const TextStyle(
                              color: Color(0XFF7E8082),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // 아이콘 Row
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0XFFEEEFF0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 14,
                                    ),
                                    Text(
                                      item['likeCount'].toString(),
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0XFFEEEFF0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.thumb_up_alt_rounded,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Text(
                                      item['cheerCount'].toString(),
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0XFFEEEFF0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.terrain_rounded,
                                      color: Colors.green,
                                      size: 14,
                                    ),
                                    Text(
                                      item['luckCount'].toString(),
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ]);
        });
  }
}
