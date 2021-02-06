import 'package:flutter/material.dart';
import 'package:storlisty/views/calendar/calendar.dart';
import 'package:storlisty/views/quickNotes/quick_notes_home.dart';
import 'package:storlisty/views/shoppingList/shopping_list_home.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> children = [
    ShoppingListHome(),
    QuickNotesHome(),
    CalendarHome()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storlisty'),
        backgroundColor: Color(0xff5DC392),
      ),
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Color(0xff5DC392),
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Listy',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Quick Notes'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          )
        ],
      ),
    );
  }
}
