import 'package:flutter/material.dart';

class MenuBottom extends StatefulWidget {
  const MenuBottom({super.key});

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

int _bottomSelectedIndex = 0;

class _MenuBottomState extends State<MenuBottom> {
  final List<BottomNavigationBarItem> _menuItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.emoji_emotions_outlined),
      activeIcon: Icon(Icons.emoji_emotions),
      label: '자랑하기',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.camera_alt_outlined),
      activeIcon: Icon(Icons.camera_alt),
      label: '카메라',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.book_outlined),
      activeIcon: Icon(Icons.book),
      label: '도감',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _bottomSelectedIndex,
      selectedItemColor: const Color(0xff395831),
      backgroundColor: const Color(0xFFFEFCF1),
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _bottomSelectedIndex = index;
        });
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/show');
            break;
          case 1:
            Navigator.pushNamed(context, '/camera');
            break;
          case 2:
            Navigator.pushNamed(context, '/book');
            break;
          default:
        }
      },
      items: _menuItems,
    );
  }
}
