import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/notification/vertical_notification_list.dart';
import 'package:my_siri/shared/temp_data/sample_cafe_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              '알림',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                '모두 읽음',
                style: TextStyle(color: Color(0XFFBBBFC3)),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        body: const VerticalNotificationList(
          data: SampleCafeData.data4,
        ));
  }
}
