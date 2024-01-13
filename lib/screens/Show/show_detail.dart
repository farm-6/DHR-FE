import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';

class ShowDetail extends StatelessWidget {
  const ShowDetail({super.key});

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
            'assets/image/sudal.png',
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 16),

          // User Info Section
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/image/sudal.png'),
                radius: 20,
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                '명칭 : Name of the Ecology',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                '발견 위치 : Discovery Location',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                '발견 시간 : Discovery Time',
                style: TextStyle(fontSize: 15),
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

          // User Description Section
          const Text(
            '사진 잘 찍었다고 칭찬받은 나의 수달 ~!~!',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
