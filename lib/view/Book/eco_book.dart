import 'package:flutter/material.dart';
import 'package:ecology_collect/view/widgets/top_appbar.dart';
import 'package:get/route_manager.dart';
import 'select_eco_list.dart';

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  Widget _buildListItem(BuildContext context, String imagePath, String text) {
    String commonUrl =
        'https://gist.githubusercontent.com/jenny7732/23d4f9bbd0168830194525c8b2fdb695/raw/d2024767901d3cd57e1c46d24aa386e5ce0f20bf/all.json';

    return GestureDetector(
      onTap: () {
        int itemCount;
        String selectedImagePath;
        int selectedCategory;

        switch (text) {
          case '식물':
            itemCount = 14;
            selectedCategory = 1;
            selectedImagePath = 'assets/image/grid/plant.png';
            break;
          case '양서파충류':
            itemCount = 9;
            selectedCategory = 2;
            selectedImagePath = 'assets/image/grid/frog.png';
            break;
          case '어류':
            itemCount = 16;
            selectedCategory = 3;
            selectedImagePath = 'assets/image/grid/fish.png';
            break;
          case '육상곤충':
            itemCount = 12;
            selectedCategory = 4;
            selectedImagePath = 'assets/image/grid/dragonfly.png';
            break;
          case '조류':
            itemCount = 16;
            selectedCategory = 5;
            selectedImagePath = 'assets/image/grid/bird.png';
            break;
          case '포유류':
            itemCount = 5;
            selectedCategory = 6;
            selectedImagePath = 'assets/image/grid/cat.png';
            break;
          default:
            itemCount = 0;
            selectedImagePath = '';
            selectedCategory = 1;
            break;
        }
        Get.to(() => SelectEcoList(
              name: text,
              itemCount: itemCount,
              imagePath: selectedImagePath,
              fileName: commonUrl,
              category: selectedCategory,
            ));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '도감',
      ),
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
}
