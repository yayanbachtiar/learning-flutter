import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function updateProduct;
  // constructor
  ProductControl(this.updateProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        updateProduct('this is new product');
      },
      child: Text('Add Product'),
    );
  }
}
