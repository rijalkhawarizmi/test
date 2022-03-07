import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_test/categories_page.dart';
import 'package:mobile_test/home.dart';
import 'package:mobile_test/saved_page.dart';
import 'package:mobile_test/setting.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  //List<String> _titles = ["Home", "Profile", "Shop"];
  List<Widget> _items = [
   Home(),
   CategoriesPage(),
   SavedPage(),
   SettingPage()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: _items
        )//_items.elementAt(_index),
      ),
      bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav()
  {
    return BottomNavigationBar(
      
        items: [
          BottomNavigationBarItem(
             backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
             backgroundColor: Colors.black,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
             backgroundColor: Colors.black,
            icon: Icon(Icons.save_rounded),
            label: 'Save',
          ),
           BottomNavigationBarItem(
             backgroundColor: Colors.black,
            icon: Icon(Icons.shopping_bag),
            label: 'Setting',
          ),
        ],
      currentIndex: _selectedIndex,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.white),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: _onTap,
    );
  }

  void _onTap(int index)
  {
    _selectedIndex = index;
    setState(() {

    });
  }
}