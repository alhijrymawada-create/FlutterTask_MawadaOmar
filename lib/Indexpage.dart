import 'package:flutter/material.dart';
import 'package:flutter_task/Accountpage.dart';
import 'package:flutter_task/Serchpage.dart';
import 'package:flutter_task/settingpage.dart';

import 'Homepage.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar = 0;
  List<Widget> _pages =[

    Homepage(),
    Serchpage(),
    settingpage(),
    Accountpage()
  ];
  String _gettitle(int index){
    switch (index){
      case 0:
        return 'الصفحة الرئيسية';
      case 1:
        return 'صفحة البحث';
      case 2:
        return 'صفحة الاعدادات';
      case 3:
        return 'صفحة الحساب';
      default:
        return 'صفحة';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_gettitle(_bottomNavbar)),),
      body: IndexedStack(
        index: _bottomNavbar,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
          onTap: (index){
          setState(() {
            _bottomNavbar = index;
          });
          },
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey[600],

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'الرئيسية'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'البحث'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'الاعدادات'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: 'الحساب'),
          ]),
    );
  }
}
