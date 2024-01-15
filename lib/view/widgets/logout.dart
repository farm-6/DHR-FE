import 'package:ecology_collect/view/kakao_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecology_collect/view/widgets/top_appbar.dart';
import 'package:ecology_collect/view/widgets/menu_bottom.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '로그아웃',
      ),
      bottomNavigationBar: const MenuBottom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
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
                      '로그아웃 하시겠습니까?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff585858)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: 300,
                        height: 30,
                        child: FilledButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: ((context) => AlertDialog(
                                      title: const Text("로그아웃 하기"),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('닫기'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Get.to(
                                                () => const KakaoLoginScreen());
                                          },
                                          child: const Text('확인'),
                                        ),
                                      ],
                                    )));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffA5D296)),
                          ),
                          child: const Text(
                            '확인',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff395831)),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
