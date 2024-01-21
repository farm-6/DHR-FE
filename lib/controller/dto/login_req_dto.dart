class LoginReqDto {
  final String? userId;
  final String? userName;
  final String? userNickName;

  LoginReqDto(
    this.userId,
    this.userName,
    this.userNickName,
  );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "userName": userName,
        "userNickName": userNickName,
      };
}
