import 'package:flutter/material.dart';
import 'package:storlisty/views/calendar/calendar.dart';
import 'package:storlisty/views/shoppingList/shoppingListHome.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ShoppingListHome(),
    ShoppingListHome(),
    CalendarHome()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storlisty'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Shopping List',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Calendar',
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      print(_currentIndex);
      _currentIndex = index;
    });
  }
}
