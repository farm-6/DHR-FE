import 'dart:convert';
import 'dart:io';

import 'package:ecology_collect/util/jwt.dart';
import 'package:ecology_collect/view/social_login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';

class KakaoLogin implements SocialLogin {
  OAuthToken? token;
  String? userid;
  String? username;
  String? nickname;
  String? profileImageUrl;

  @override
  Future<bool> login() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();
      if (isInstalled) {
        try {
          token = await UserApi.instance.loginWithKakaoTalk();
          debugPrint('카카오톡 로그인 성공!!');

          final url = Uri.https('kapi.kakao.com', '/v2/user/me');

          final response = await http.get(
            url,
            headers: {
              HttpHeaders.authorizationHeader: 'Bearer ${token?.accessToken}'
            },
          );

          final profileInfo = json.decode(response.body);
          profileImageUrl = profileInfo?['properties']['profile_image'];
          userid = profileInfo?['id'].toString();
          username = profileInfo?['properties']['nickname'];
          nickname = profileInfo?['properties']['nickname'];
          debugPrint(nickname);

          if (token != null) {
            jwtToken = token!.accessToken;
          }

          return true;
        } catch (e) {
          debugPrint('응답 본문 디코딩 오류: $e');
          debugPrint('카카오톡 로그인 실패!!');
          return false;
        }
      } else {
        try {
          token = await UserApi.instance.loginWithKakaoAccount();
          debugPrint('카카오톡 로그인 성공!!');

          final url = Uri.https('kapi.kakao.com', '/v2/user/me');

          final response = await http.get(
            url,
            headers: {
              HttpHeaders.authorizationHeader: 'Bearer ${token?.accessToken}'
            },
          );

          final profileInfo = json.decode(response.body);
          profileImageUrl = profileInfo?['properties']['profile_image'];
          userid = profileInfo?['id'].toString();
          username = profileInfo?['properties']['nickname'];
          nickname = profileInfo?['properties']['nickname'];
          debugPrint(nickname);
          if (token != null) {
            jwtToken = token!.accessToken;
          }
          debugPrint(jwtToken);
          return true;
        } catch (e) {
          debugPrint('응답 본문 디코딩 오류: $e');
          debugPrint('카카오톡 로그인 실패!!');
          return false;
        }
      }
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await UserApi.instance.unlink();
      return true;
    } catch (error) {
      return false;
    }
  }
}
