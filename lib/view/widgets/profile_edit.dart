import 'package:ecology_collect/view/widgets/nickname.dart';
import 'package:flutter/material.dart';
import 'package:ecology_collect/view/widgets/top_appbar.dart';
import 'package:ecology_collect/view/widgets/menu_bottom.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Profileedit extends StatefulWidget {
  const Profileedit({Key? key}) : super(key: key);

  @override
  State<Profileedit> createState() => _ProfileeditState();
}

class _ProfileeditState extends State<Profileedit> {
  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width / 4;

    return SafeArea(
      child: Scaffold(
        appBar: const TopAppBar(
          title: '내 정보 수정',
        ),
        bottomNavigationBar: const MenuBottom(),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: imageSize,
                minWidth: imageSize,
              ),
              child: GestureDetector(
                onTap: () {
                  _showBottomSheet();
                },
                child: const Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                Get.to(() => const Nicknameedit());
              },
              child: const Text(
                "닉네임                                00  >",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 84, 84, 84),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color(0xff66A058),
              ),
              onPressed: () {},
              child: const Text(
                '사진 촬영',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color(0xff66A058),
              ),
              onPressed: () {},
              child: const Text(
                '사진 선택',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color(0xff66A058),
              ),
              onPressed: () {},
              child: const Text(
                '사진 삭제',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color(0xff66A058),
              ),
              onPressed: () {
                Get.to(() => const Profileedit());
              },
              child: const Text(
                '취소',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
