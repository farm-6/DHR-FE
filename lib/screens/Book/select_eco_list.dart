import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:flutter/material.dart';

class SelectEcoList extends StatelessWidget {
  final String category;

  const SelectEcoList({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: category,
      ),
      body: const Center(
        child: Text('선택한 생태 분류에 대한 정보'),
      ),
    );
  }
}
