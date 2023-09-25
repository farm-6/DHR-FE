import 'package:ecology_collect/widgets/menu_bottom.dart';
import 'package:ecology_collect/widgets/menu_drawer.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:flutter/material.dart';

class AiReport extends StatelessWidget {
  const AiReport({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopAppBar(
        title: '탐정 보고서',
      ),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
    );
  }
}
