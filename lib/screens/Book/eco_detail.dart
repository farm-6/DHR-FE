import 'package:flutter/material.dart';
import 'package:ecology_collect/screens/Show/enter_memo.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';

class EcoDetail extends StatelessWidget {
  final Map<String, dynamic> ecoDetails;

  const EcoDetail({Key? key, required this.ecoDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 이미지 URL 가져오기
    String? imageUrl = ecoDetails['image'];

    Widget imageWidget = imageUrl == null
        ? Image.asset('assets/image/sudal.png')
        : Image.network(imageUrl);

    return Scaffold(
      appBar: TopAppBar(
        title: ecoDetails['common_name'] ?? 'Detail',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageWidget,
            const SizedBox(height: 16),
            Text(
              ecoDetails['common_name'],
              style: const TextStyle(
                fontSize: 23,
              ),
            ),
            const SizedBox(height: 16),
            // 나머지 정보들 표시
            _buildDetailItem('학명', ecoDetails['scientific_name']),
            _buildDetailItem('크기', ecoDetails['size']),
            _buildDetailItem('서식지', ecoDetails['habitat']),
            _buildDetailItem('특징', ecoDetails['appearance']),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterMemo(
                          commonName: ecoDetails['common_name'] ?? 'No Name'),
                    ),
                  );
                },
                child: Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '자랑하기',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.send,
                        color: Color(0xFF81A875), // #81A875 color
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, dynamic content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '- $title : ',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            content?.toString() ?? '',
            style: const TextStyle(
              fontSize: 13,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
