import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:ecology_collect/widgets/menu_bottom.dart';
import 'package:ecology_collect/widgets/profile_edit.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Nicknameedit extends StatelessWidget {
  const Nicknameedit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '닉네임 변경',
      ),
      bottomNavigationBar: const MenuBottom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "새로운 닉네임을 입력해주세요",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff525252)),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: '닉네임 입력',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "닉네임은 10글자 이내로 입력해주세요.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 0, 0)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                height: 30,
                child: FilledButton(
                    onPressed: () {
                      Get.to(const Profileedit());
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffCBE9C1)),
                    ),
                    child: const Text('수정완료',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff395831)))))
          ],
        ),
      ),
    );
  }
}
