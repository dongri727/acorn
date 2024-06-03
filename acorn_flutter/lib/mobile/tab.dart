import 'package:acorn_flutter/mobile/register/register_page.dart';
import 'package:acorn_flutter/mobile/scalable/menu/mobile_scalable.dart';
import 'package:acorn_flutter/mode.dart';
import 'package:flutter/material.dart';
import 'game_page.dart';
import 'mobile_index_page.dart';
import 'mobile_search_page.dart';


class TabWidget extends StatefulWidget {
  const TabWidget({super.key});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  static const _screens = [
    MobileIndexPage(),
    RegisterPage(),
    SearchPage(),
    ScalableM(),
    GamePage(),
    ModePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'REGISTER'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'CLASSIC'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'SCALABLE'),
            BottomNavigationBarItem(icon: Icon(Icons.games), label: 'GAME'),
            BottomNavigationBarItem(icon: Icon(Icons.link), label: 'v.Web'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}