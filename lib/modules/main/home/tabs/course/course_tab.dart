import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/home/tabs/course/vertical_course_list.dart';

class CourseTab extends StatelessWidget {
  const CourseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFF1F2F3),
      child: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: VerticalCourseList(),
          ),
        ],
      ),
    );
  }
}
