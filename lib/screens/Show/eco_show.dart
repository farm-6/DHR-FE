import 'package:ecology_collect/screens/Show/show_detail.dart';
import 'package:ecology_collect/widgets/menu_bottom.dart';
import 'package:ecology_collect/widgets/menu_drawer.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:flutter/material.dart';

class Show extends StatelessWidget {
  final List<String> imagesFromServer = [
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
    'https://cdn.epnnews.com/news/photo/202008/5216_6301_1640.jpg',
  ];

  Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '자랑하기',
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MenuBottom(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0.3,
          mainAxisSpacing: 0.3,
        ),
        itemCount: imagesFromServer.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowDetail(),
                ),
              );
            },
            child: Card(
              elevation: 2,
              child: Image.network(
                imagesFromServer[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
