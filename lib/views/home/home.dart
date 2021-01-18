import 'package:flutter/material.dart';
import 'package:storlisty/views/calendar/calendar.dart';
import 'package:storlisty/views/quickNotes/quick_notes_home.dart';
import 'package:storlisty/views/shoppingList/shopping_list_home.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> children = [
    ShoppingListHome(),
    QuickNotesHome(),
    CalendarHome()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storlisty'),
      ),
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Shopping List',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: 'Quick Notes'
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
