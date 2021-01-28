import 'package:flutter/material.dart';
import 'package:storlisty/views/shoppingList/widgets/create_shopping_item_form.dart';

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
        // body: ListView.builder(
        //     itemCount: _shoppingListItems.length,
        //     itemBuilder: (context, index) => this.buildRow(index)),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: 'Add a new Shopping List',
            backgroundColor: Color(0xff5DC392),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    insetPadding: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                      child: CreateShoppingItemForm()
                    )
                  );
              });
            },
          ),
        ),
      )
    );
  }
}
