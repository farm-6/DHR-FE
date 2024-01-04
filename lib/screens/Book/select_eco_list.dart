import 'package:ecology_collect/screens/Book/eco_detail.dart';
import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SelectEcoList extends StatelessWidget {
  final String category;
  final int itemCount;
  final String imagePath;
  final String fileName;

  const SelectEcoList({
    Key? key,
    required this.category,
    required this.itemCount,
    required this.imagePath,
    required this.fileName,
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
        title: category, // Set category as title
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _loadJsonData(fileName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || !snapshot.hasData) {
            return const Center(child: Text('Failed to load data'));
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: itemCount,
              itemBuilder: (context, index) => SizedBox(
                width: 100,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EcoDetail(ecoDetails: snapshot.data![index]),
                      ),
                    );
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
                              snapshot.data![index]['common_name'] ?? 'No data',
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
