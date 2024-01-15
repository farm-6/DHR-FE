import 'package:ecology_collect/view/Show/eco_show.dart';
import 'package:flutter/material.dart';
import 'package:ecology_collect/view/widgets/top_appbar.dart';
import 'package:get/route_manager.dart';

class EnterMemo extends StatelessWidget {
  final String commonName;

  const EnterMemo({Key? key, required this.commonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '자랑하기', // Show common_name as title
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '도감에서 $commonName을 자랑하세요!',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: '자랑할 내용을 입력하세요...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.off(Show());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF76B760), // #B8E3AA color
                ),
                child: const Text(
                  '자랑하기',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
