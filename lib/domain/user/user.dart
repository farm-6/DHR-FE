class User {
  final int? id;
  final String? username;
  final String? nickname;

  User({
    this.id,
    this.username,
    this.nickname,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  User.fromJson(Map<String, dynamic> json)
      : id = json["userId"],
        username = json["userName"],
        nickname = json["userNickname"];
}
