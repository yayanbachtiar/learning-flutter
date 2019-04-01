import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = "Easylist";
    return MaterialApp(
        home: Scaffold(appBar: buildAppBar(data), body: buildHeader()));
  }

  Column buildHeader() {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {},
        ),
      ),
      Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/baju.jpg'),
            Text("baju saya")
          ],
        ),
      )
    ]);
  }

  AppBar buildAppBar(String data) {
    return AppBar(
      title: Text(data),
    );
  }
}
