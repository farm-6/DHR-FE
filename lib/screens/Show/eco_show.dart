import 'package:ecology_collect/widgets/menu_bottom.dart';
import 'package:ecology_collect/widgets/menu_drawer.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:flutter/material.dart';

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopAppBar(
        title: '자랑하기',
      ),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
    );
  }
}
