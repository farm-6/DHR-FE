import 'package:ecology_collect/view/AiReport/image_select.dart';
import 'package:ecology_collect/view/Book/eco_book.dart';
import 'package:ecology_collect/view/Show/eco_show.dart';
import 'package:ecology_collect/view/kakao_login_screen.dart';
import 'package:ecology_collect/view/widgets/menu_bottom.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '71a0cd654e5292995b11c75000049f90');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        '/': (context) => Show(),
        '/show': (context) => Show(),
        '/camera': (context) => const ImageSelect(),
        '/book': (context) => const Book(),
        '/login': (context) => const KakaoLoginScreen(),
      },
      initialRoute: '/login',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.green.shade700,
        ),
        scaffoldBackgroundColor: const Color(0xffFEFCF1),
        fontFamily: 'Jalnan',
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB8E3AA),
        title: const Text('한강 생태 모아'),
      ),
      bottomNavigationBar: const MenuBottom(),
      body: Center(
        child: Image.asset('assets/image/sudal.png'),
      ),
    );
  }
}
