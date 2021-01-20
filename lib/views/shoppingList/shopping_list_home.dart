import 'package:flutter/material.dart';

class ShoppingListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.red,
            child: const Center(child: Text("Test 1")),
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: const Center(child: Text("Test 2"))
          ),
        ],
      ),
    );
  }
}
