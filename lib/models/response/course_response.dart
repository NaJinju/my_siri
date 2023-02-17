class CourseResponse {
  List<CourseModel> courses;

  CourseResponse({
    required this.courses,
  });

  // TODO: factory의 의미??
  factory CourseResponse.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['courses'] as List;
    List<CourseModel> courses =
        list.map((i) => CourseModel.fromJson(i)).toList();

    return CourseResponse(courses: courses);
  }
}

class CourseModel {
  CourseModel({
    required this.title,
    required this.imageUrl,
    required this.createdAt,
    required this.price,
  });

  final String title, imageUrl, createdAt;
  final int price;

  CourseModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        imageUrl = json['imageUrl'],
        createdAt = json['createdAt'],
        price = json['price'];
}
