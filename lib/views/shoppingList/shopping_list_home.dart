import 'package:flutter/material.dart';

class ShoppingListHome extends StatefulWidget {
  @override
  _ShoppingListHomeState createState() => _ShoppingListHomeState();
}

class _ShoppingListHomeState extends State<ShoppingListHome> {
  final List<Widget> _shoppingListItems = [];

  void addShoppingItem() {
    _shoppingListItems.add(Container(
      height: 50,
      color: Colors.red,
      child: const Center(child: Text("Test 1")),
    ));
  }

  Widget buildRow(int index) {
    return _shoppingListItems[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _shoppingListItems.length,
          itemBuilder: (context, index) => this.buildRow(index)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => addShoppingItem()),
        child: Icon(Icons.add),
        tooltip: 'Add a new Shopping List',
        backgroundColor: Color(0xff5DC392),
      ),
    );
  }
}
