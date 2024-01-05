import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/logout.dart';
import 'package:ecology_collect/widgets/withdrawal.dart';

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
      /*decoration: const BoxDecoration(
        color: Color(0xffFEFCF1),
      ),*/
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '회원 탈퇴',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    '탈퇴 및 가입',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: FilledButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: ((context) => AlertDialog(
                                title: const Text("정말 탈퇴하시겠습니까?"),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('닫기'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('확인'),
                                  ),
                                ],
                              )));
                    },
                    child: const Text("회원탈퇴"),
                  ))
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );

  for (var element in menuTitles) {
    Widget screen = Container();
    menuItems.add(ListTile(
      title: Text(
        element,
        style: const TextStyle(fontSize: 18, color: Colors.black), // 검정색으로 설정
      ),
      onTap: () {
        switch (element) {
          case '로그아웃':
            screen = const Logout();
            break;
          case '탈퇴하기':
            screen = Withdrawal();
            break;
        }
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screen));
      },
    ));
  }
  return menuItems;
}
