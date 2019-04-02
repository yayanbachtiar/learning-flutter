import 'package:flutter/material.dart';
import './product_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = "Easylist";
    return MaterialApp(
        home: Scaffold(appBar: buildAppBar(data), body: ProductManager(data)));
  }

  AppBar buildAppBar(String data) {
    return AppBar(
      title: Text(data),
    );
  }
}
