import 'package:flutter/material.dart';

class CreateShoppingItemForm extends StatefulWidget {
  @override
  _CreateShoppingItemFormState createState() => _CreateShoppingItemFormState();
}

class _CreateShoppingItemFormState extends State<CreateShoppingItemForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext contect) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a text';
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  print('Shopping Lixt Item Success');
                }
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}
