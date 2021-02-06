import 'package:flutter/material.dart';

class CreateShoppingItemForm extends StatefulWidget {
  @override
  _CreateShoppingItemFormState createState() => _CreateShoppingItemFormState();
}

class _CreateShoppingItemFormState extends State<CreateShoppingItemForm> {
  final _formKey = GlobalKey<FormState>();
  String listyName = "";

  @override
  Widget build(BuildContext contect) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff5DC392),
                ),
                hintText: 'Name your new awesome Listy!',
                hintStyle: TextStyle(color: Color(0xff5DC392)),
                labelText: 'Listy Name *',
                labelStyle: TextStyle(color: Color(0xff5DC392))),
            onSaved: (String value) {
              listyName = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a text';
              }
              return null;
            },
            cursorColor: Color(0xff5DC392),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                print('Form is valid!');
              }
            },
            child: Text('Save'),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff5DC392), // background
            ),
          ),
        ],
      ),
    );
  }
}
