import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/logout.dart';
import 'package:ecology_collect/widgets/withdrawal.dart';
import 'package:ecology_collect/widgets/profile_edit.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }
}

List<Widget> buildMenuItems(BuildContext context) {
  final List<String> menuTitles = ['로그아웃', '탈퇴하기'];
  List<Widget> menuItems = [];
  menuItems.add(
    DrawerHeader(
        decoration: const BoxDecoration(
          color: Color(0xffB8E3AA),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/sudal.png',
                  width: 100,
                  height: 100,
                ),
                const Text(
                  '닉네임',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
                        const Color(0xffFEFCF1)),
                  ),
                  child: const Text(
                    '프로필 편집',
                    style: TextStyle(fontSize: 15, color: Color(0xff395831)),
                  ),
                ))
          ],
        )),
  );

  for (var element in menuTitles) {
    Widget screen = Container();
    menuItems.add(ListTile(
      title: Text(
        element,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff525252)),
      ),
      onTap: () {
        switch (element) {
          case '로그아웃':
            screen = const Logout();
            break;
          case '탈퇴하기':
            screen = const Withdrawal();
            break;
        }
        Get.to(screen);
      },
    ));
  }
  return menuItems;
}
