import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Bottom sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _newTaskModalBottomSheet(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}

void _newTaskModalBottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 25.0, 12.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Filter',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    'Quick Filter',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
                        child: Text('Rated 5',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      CircularCheckBox(
                        value: true,
                        onChanged: (bool x) {},
                        checkColor: Colors.amber[100],
                        activeColor: Colors.amber[500],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
                        child: Text(
                          'Rated 4+',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      CircularCheckBox(
                        value: true,
                        onChanged: (bool x) {},
                        checkColor: Colors.amber[100],
                        activeColor: Colors.amber[500],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
                        child: Text(
                          'Rated 3+',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      CircularCheckBox(
                        value: true,
                        onChanged: (bool x) {},
                        checkColor: Colors.amber[100],
                        activeColor: Colors.amber[500],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Sort by',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
                        child: Text('Close to me',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      CircularCheckBox(
                        value: false,
                        onChanged: (bool x) {},
                        checkColor: Colors.amber[100],
                        activeColor: Colors.amber[500],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
                        child: Text(
                          'Price high to low',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      CircularCheckBox(
                        value: false,
                        onChanged: (bool x) {},
                        checkColor: Colors.amber[100],
                        activeColor: Colors.amber[500],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 2.0),
                        child: Text(
                          'Prize low to high',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      CircularCheckBox(
                        value: false,
                        onChanged: (bool x) {},
                        checkColor: Colors.amber[100],
                        activeColor: Colors.amber[500],
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('Cancel'),
                  )),
                ],
              ),
            ),
          ),
        );
      });
}
