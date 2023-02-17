import 'package:flutter/material.dart';
import 'package:my_siri/api/api_service.dart';
import 'package:my_siri/models/response/course_response.dart';

class MypageScreen extends StatefulWidget {
  const MypageScreen({super.key});

  @override
  State<MypageScreen> createState() => _MypageScreenState();
}

class _MypageScreenState extends State<MypageScreen> {
  List<CourseModel> coursesData = [];
  //  courses = ApiService.getCourses();

  @override
  void initState() {
    super.initState();
  }

  Future<List<CourseModel>> fetchData() async {
    Future<List<CourseModel>> newData = ApiService.getCourses();
    return newData;
  }

  void _addData() {
    fetchData().then((newData) => {
          setState(() {
            coursesData.addAll(newData);
          })
        });
  }

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
            '마이페이지',
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
      body: Container(
        child: Column(
          children: [
            IconButton(
              onPressed: _addData,
              icon: const Icon(
                Icons.refresh,
                color: Color(0XFFB1B8C0),
              ),
            ),
            Text('$coursesData'),
          ],
        ),
      ),
    );
  }
}
