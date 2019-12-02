import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Container(
          padding: EdgeInsets.all(50),
          child: ListView(
            children: <Widget>[
              Card(
                child: Container(
                  child: Center(
                    child: Text("sdad"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
