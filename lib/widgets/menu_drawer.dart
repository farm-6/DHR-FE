import 'package:flutter/material.dart';

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
  final List<String> menuTitles = ['닉네임 수정하기', '프로필 이미지 수정하기', '로그아웃', '탈퇴하기'];
  List<Widget> menuItems = [];
  menuItems.add(
    DrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xffFEFCF1),
      ),
      child: Image.asset('assets/image/sudal.png'),
    ),
  );

  for (var element in menuTitles) {
    menuItems.add(ListTile(
      title: Text(
        element,
        style: const TextStyle(fontSize: 18, color: Colors.black), // 검정색으로 설정
      ),
      onTap: () {},
    ));
  }
  return menuItems;
}
