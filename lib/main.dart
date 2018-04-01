import 'package:building_layouts_in_flutter/HorizontalLayout.dart';
import 'package:building_layouts_in_flutter/VerticalLayout.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new MainMenu());
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Example use of layout"),
      ),
      body: new Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: new ListView(
          children: <Widget>[
            new RaisedButton(
                child: new Text('Launch vertical layout example'),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new VerticalLayout()));
                }),
            new RaisedButton(
                child: new Text('Launch horizontal layout example'),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new HorizontalLayout()));
                })
          ],
        ),
      ),
    );
  }
}


