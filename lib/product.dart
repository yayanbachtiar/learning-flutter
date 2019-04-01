import 'package:flutter/material.dart';

/**
 * Stateless widget, 
 * state dimana tidak banyak perubahan data didalamnya,
 * Parsing data menggunakan constructor
 */
class Product extends StatelessWidget {
  final List<String> product;
  // constructor
  Product(this.product);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: product
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/baju.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
