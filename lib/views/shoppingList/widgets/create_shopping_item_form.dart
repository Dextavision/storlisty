import 'package:flutter/material.dart';

class CreateShoppingItemForm extends StatefulWidget {
  @override
  _CreateShoppingItemFormState createState() => _CreateShoppingItemFormState();
}

class _CreateShoppingItemFormState extends State<CreateShoppingItemForm> {
  final _formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext contect) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            onSaved: (String value) {
              name = value;
            },
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
                  _formKey.currentState.save();
                  print('Form is valid!');
                }
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}
