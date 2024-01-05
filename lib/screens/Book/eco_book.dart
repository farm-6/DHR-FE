import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'select_eco_list.dart';

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  Widget _buildListItem(
      BuildContext context, String imagePath, String text, String url) {
    return GestureDetector(
      onTap: () {
        int itemCount;
        String selectedImagePath;

        switch (text) {
          case '식물':
            itemCount = 14;
            selectedImagePath = 'assets/image/grid/plant.png';
            url =
                'https://gist.githubusercontent.com/jenny7732/d076e45b610c2c9a10bf06aa74314c65/raw/aa34780470c5a9809862d6bcaa8fbadc844404f8/plant.json';
            break;
          case '양서파충류':
            itemCount = 9;
            selectedImagePath = 'assets/image/grid/frog.png';
            url =
                'https://gist.githubusercontent.com/jenny7732/788e8f3fd62b89ae1ab284a9f13b4363/raw/c61fdd13ebe9cdffa0f5669bf2ce43ee5689ecf7/frog.json';
            break;
          case '어류':
            itemCount = 16;
            selectedImagePath = 'assets/image/grid/fish.png';
            url =
                'https://gist.githubusercontent.com/jenny7732/732bcf2023f3e905fab15ed2a2debb72/raw/ef7db4b1d832817dfd80d40d2a503afd916a19bb/fish.json';

            break;
          case '육상곤충':
            itemCount = 12;
            selectedImagePath = 'assets/image/grid/dragonfly.png';
            url =
                'https://gist.githubusercontent.com/jenny7732/15b18512f78e843fe956b87b58de1f84/raw/3a4776310381537f1d6715ed32743074bc93309b/dragonfly.json';

            break;
          case '조류':
            itemCount = 16;
            selectedImagePath = 'assets/image/grid/bird.png';
            url =
                'https://gist.githubusercontent.com/jenny7732/2d73f6e22919c78daf772e328d417ce9/raw/e7ae3566ae1713347a34e39f5e3da90223a0dc5c/bird.json';

            break;
          case '포유류':
            itemCount = 5;
            selectedImagePath = 'assets/image/grid/cat.png';
            url =
                'https://gist.githubusercontent.com/jenny7732/57c30c9970a5a7d47408bfc84671f988/raw/5e19f11be3f835bbcb04285d56a0b68f0a0f8cd5/mammals.json';

            break;
          default:
            itemCount = 0;
            selectedImagePath = ''; // 디폴트 이미지 경로를 설정하거나 처리할 사항을 추가.
            url = ''; // 디폴트 URL을 설정하거나 처리할 사항을 추가.
            break;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectEcoList(
              category: text,
              itemCount: itemCount,
              imagePath: selectedImagePath,
              fileName: url,
            ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '도감',
      ),
      body: ListView(
        children: [
          _buildListItem(context, 'assets/image/grass.png', '식물', ''),
          _buildListItem(context, 'assets/image/frog.png', '양서파충류', ''),
          _buildListItem(context, 'assets/image/fish.png', '어류', ''),
          _buildListItem(context, 'assets/image/hopper.png', '육상곤충', ''),
          _buildListItem(context, 'assets/image/bird.png', '조류', ''),
          _buildListItem(context, 'assets/image/cat.png', '포유류', ''),
        ],
      ),
    );
  }
}
