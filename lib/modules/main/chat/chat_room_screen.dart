import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/chat/chat_room_list.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0XFF72777B),
        title: const Text(
          '초급반',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ChatRoomList(),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        child: const TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.face),
            icon: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
