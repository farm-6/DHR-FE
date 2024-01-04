import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';

class EcoDetail extends StatelessWidget {
  final Map<String, dynamic> ecoDetails;

  const EcoDetail({Key? key, required this.ecoDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: ecoDetails['common_name'] ?? 'Detail',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/image/sudal.png'),
            const SizedBox(height: 16),
            Text(
              ecoDetails['common_name'],
              style: const TextStyle(
                fontSize: 23,
              ),
            ),
            const SizedBox(height: 16),
            _buildDetailItem('학명', ecoDetails['scientific_name']),
            _buildDetailItem('크기', ecoDetails['size']),
            _buildDetailItem('서식지', ecoDetails['habitat']),
            _buildDetailItem('특징', ecoDetails['appearance']),
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
            content.toString(),
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
