import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/chat/vertical_chat_list.dart';
import 'package:my_siri/shared/temp_data/sample_chat_data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0XFF72777B),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '채팅',
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
      body: const VerticalChatList(
        data: SampleChatData.data1,
      ),
    );
  }
}
