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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                '수달 탐정의 미션',
                style: TextStyle(
                  color: Color(0xff50555C),
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                '한강의 생태를 찾아 모아보자!',
                style: TextStyle(
                  color: Color(0xff50555C),
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '한강 생태모아',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
              ),
              Image.asset(
                'assets/image/logo.png',
                width: 360,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
