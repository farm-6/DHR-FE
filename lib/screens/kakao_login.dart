import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '로그인',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: '이메일'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: '비밀번호'),
              obscureText: true,
            ),
            ElevatedButton(
              // ElevatedButton을 사용하여 로그인 버튼 생성
              onPressed: () {
                // 로그인 로직을 여기에 추가
              },
              child: const Text('로그인'),
            ),
          ],
        ),
      ),
    );
  }
}
