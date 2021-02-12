import 'package:flutter/material.dart';
import 'package:storlisty/views/listy/listy.dart';
import 'package:storlisty/views/listy/widgets/listy_create_form.dart';

class ListyHome extends StatefulWidget {
  @override
  _ListyHomeState createState() => _ListyHomeState();
}

class _ListyHomeState extends State<ListyHome> {
  List<Listy> _listy = [];

  void addListyToList(Listy newListy) {
    setState(() {
      _listy.add(newListy);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        ListView.builder(
            itemBuilder: (context, index) => Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(child: Text(_listy[index].getName())),
                )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              tooltip: 'Add a new Listy',
              backgroundColor: Color(0xff5DC392),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          insetPadding: EdgeInsets.all(10),
                          content: Container(
                              width: double.infinity,
                              height: 200,
                              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                              child: CreateListyForm()));
                    }).then((value) => addListyToList(value));
              },
            ),
          ),
        ),
      ],
    ));
  }
}
