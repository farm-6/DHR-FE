import 'package:ecology_collect/screens/Book/select_eco_list.dart';
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
          _buildListItem(context, 'assets/image/grass.png', '식물'),
          _buildListItem(context, 'assets/image/frog.png', '양서파충류'),
          _buildListItem(context, 'assets/image/fish.png', '어류'),
          _buildListItem(context, 'assets/image/hopper.png', '육상곤충'),
          _buildListItem(context, 'assets/image/bird.png', '조류'),
          _buildListItem(context, 'assets/image/cat.png', '포유류'),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String imagePath, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectEcoList(category: text),
          ),
        );
      },
      child: Container(
        height: 130,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffD9D9D9),
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      ),
    );
  }
}
