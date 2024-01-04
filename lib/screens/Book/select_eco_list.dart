import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:http/http.dart' as http;

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

  Future<String> _loadJsonData(String url) async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<String?> _getCommonNameFromJson(String url, int index) async {
    try {
      String jsonString = await _loadJsonData(url);
      List<dynamic> data = json.decode(jsonString);
      if (index >= 0 && index < data.length) {
        return data[index]['common_name'];
      }
      return null; // Return null if index is out of range
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: category,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) => SizedBox(
          width: 100,
          height: 100,
          child: FutureBuilder<String?>(
            future: _getCommonNameFromJson(fileName, index),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError || snapshot.data == null) {
                return const Text('No data');
              } else {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(imagePath, fit: BoxFit.fill),
                    Positioned(
                      child: Container(
                        color: Colors.black.withOpacity(0.7),
                        padding: const EdgeInsets.all(4),
                        child: Center(
                          child: Text(snapshot.data!,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
