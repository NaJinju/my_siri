class PostResponse {
  List<PostModel> posts;
  int totalPosts;

  PostResponse({
    required this.posts,
    required this.totalPosts,
  });

  // TODO: factory의 의미??
  factory PostResponse.fromJson(Map<String, dynamic> parsedJson) {
    var totalPosts = parsedJson['totalPosts'];
    var list = parsedJson['data'] as List;
    List<PostModel> posts = list.map((i) => PostModel.fromJson(i)).toList();

    return PostResponse(posts: posts, totalPosts: totalPosts);
  }
}

class PostModel {
  PostModel({
    required this.title,
    required this.createdAt,
    required this.likeCount,
    required this.viewCount,
  });

  final String title, createdAt;
  final int likeCount, viewCount;

  PostModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        createdAt = json['createdAt'],
        likeCount = json['likeCount'],
        viewCount = json['viewCount'];
}
