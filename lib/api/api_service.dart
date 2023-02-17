import 'dart:convert';

import 'package:my_siri/models/response/course_response.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://rest.liveklass.com';
  static const int channelSeq = 101;
  static const int boardSeq = 101;
  static const String verson1 = 'v1.0';
  static const String verson3 = 'v3.0';

  static const String courseUrl =
      '$baseUrl/$verson3/channels/$channelSeq/courses?q=%EC%8B%9C%EB%A6%AC';
  static const String postUrl =
      '$baseUrl/$verson1/channels/$channelSeq/boards/$boardSeq/posts';

  static Future<List<CourseModel>> getCourses() async {
    final url = Uri.parse(courseUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return CourseResponse.fromJson(responseJson).courses;
    }
    throw Error();
  }

  static Future<CourseResponse> getPosts() async {
    final url = Uri.parse(postUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      return CourseResponse.fromJson(responseJson);
    }
    throw Error();
  }
}
