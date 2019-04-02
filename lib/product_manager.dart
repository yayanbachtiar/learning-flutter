import 'package:flutter/material.dart';
import './product.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String stringAwal;
  ProductManager(this.stringAwal);
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _product = [];
  @override
  void initState() {
    super.initState();
    _product.add(widget.stringAwal);
  }

  // function
  void _updateProduct(String product) {
    setState(() {
      _product.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child:
              ProductControl(_updateProduct), // melempar function ke class lain
        ),
        // manggilproduct
        Product(_product)
      ],
    );
  }
}
