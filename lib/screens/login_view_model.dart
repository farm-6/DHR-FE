import 'package:ecology_collect/screens/social_login.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';

class LoginViewModel {
  final SocialLogin _socialLogin;
  bool isLogined = false;
  User? user;

  LoginViewModel(this._socialLogin);

  Future login() async {
    isLogined = await _socialLogin.login();
    if (isLogined) {
      user = await UserApi.instance.me();
    }
  }

  Future logout() async {
    await _socialLogin.login();
    isLogined = false;
    user = null;
  }
}
