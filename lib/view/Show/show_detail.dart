import 'package:ecology_collect/view/kakao_login.dart';
import 'package:ecology_collect/view/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:ecology_collect/view/widgets/top_appbar.dart';

// ignore: must_be_immutable
class ShowDetail extends StatelessWidget {
  ShowDetail({super.key});
  final viewModel = LoginViewModel(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '자랑하기',
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.asset(
            'assets/image/flower.png',
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(viewModel
                        .user?.kakaoAccount?.profile?.profileImageUrl ??
                    'http://k.kakaocdn.net/dn/1G9kp/btsAot8liOn/8CWudi3uy07rvFNUkk3ER0/img_640x640.jpg'),
                radius: 20,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewModel.user?.kakaoAccount?.profile?.nickname ?? '이유진',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                onPressed: () {
                  // Handle Like button tap
                },
              ),
            ],
          ),

          const SizedBox(height: 10),
          Container(
            height: 1.0,
            width: 500.0,
            color: const Color(0xFFA4A6AB),
          ),
          const SizedBox(height: 20),

          // Ecology Info Section
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '명칭 : 송엽국',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                '발견 위치 : 여의도 한강공원',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                '발견 시간 : 3:03 PM',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Container(
            height: 1.0,
            width: 500.0,
            color: const Color(0xFFA4A6AB),
          ),
          const SizedBox(height: 20),

          const Text(
            ' yeah!!',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
