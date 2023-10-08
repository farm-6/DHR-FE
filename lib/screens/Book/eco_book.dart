import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/menu_bottom.dart';
import 'package:ecology_collect/widgets/menu_drawer.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '도감',
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MenuBottom(),
      body: ListView(
        children: [
          _buildListItem('assets/image/grass.png', '식물'),
          _buildListItem('assets/image/frog.png', '양서파충류'),
          _buildListItem('assets/image/fish.png', '어류'),
          _buildListItem('assets/image/hopper.png', '육상곤충'),
          _buildListItem('assets/image/bird.png', '조류'),
          _buildListItem('assets/image/cat.png', '포유류'),
        ],
      ),
    );
  }

  Widget _buildListItem(String imagePath, String text) {
    return Container(
      height: 130, // 리스트 아이템의 높이를 120으로 설정
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffD9D9D9), // 구분선 색상
            width: 1.0, // 구분선 높이
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // 이미지와 텍스트를 spaceEvenly 정렬
        children: [
          Image.asset(imagePath),
          const SizedBox(
            width: 30,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
