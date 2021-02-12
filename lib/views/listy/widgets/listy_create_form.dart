import 'package:flutter/material.dart';
import 'package:storlisty/views/listy/listy.dart';

class CreateListyForm extends StatefulWidget {
  @override
  _CreateListyFormState createState() => _CreateListyFormState();
}

class _CreateListyFormState extends State<CreateListyForm> {
  final _formKey = GlobalKey<FormState>();
  String listyName;
  Listy newListy;

  addListy(String name) {
    newListy = Listy(name);
  }

  @override
  Widget build(BuildContext contect) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(
                  Icons.list,
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
                addListy(listyName);
                Navigator.pop(context, newListy);
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
