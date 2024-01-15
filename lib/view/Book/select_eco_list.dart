import 'package:flutter/material.dart';
import 'package:ecology_collect/view/Book/eco_detail.dart';
import 'package:ecology_collect/view/widgets/top_appbar.dart';

import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SelectEcoList extends StatelessWidget {
  final String name;
  final int itemCount;
  final String imagePath;
  final String fileName;
  final int category;

  const SelectEcoList({
    Key? key,
    required this.name,
    required this.itemCount,
    required this.imagePath,
    required this.fileName,
    required this.category,
  }) : super(key: key);

  Future<List<Map<String, dynamic>>> _loadJsonData(String url) async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: name, // Set category as title
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _loadJsonData(fileName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || !snapshot.hasData) {
            return const Center(child: Text('Failed to load data'));
          } else {
            List<Map<String, dynamic>> filteredData = snapshot.data!
                .where((item) => item['category'] == category)
                .toList();

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: filteredData.length,
              itemBuilder: (context, index) => SizedBox(
                width: 100,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => EcoDetail(ecoDetails: filteredData[index]));
                  },
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(imagePath, fit: BoxFit.fill),
                      Positioned(
                        child: Container(
                          color: Colors.black.withOpacity(0.7),
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              filteredData[index]['common_name'] ?? 'No data',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
