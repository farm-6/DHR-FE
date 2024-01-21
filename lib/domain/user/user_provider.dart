import 'package:get/get.dart';

const host = "http://34.83.150.5:8080";

// 통신
class UserProvider extends GetConnect {
  // Promise (데이터 약속)
  Future<Response> login(Map data) => post("$host/login", data);
}
