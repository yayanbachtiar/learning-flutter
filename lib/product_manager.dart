import 'package:flutter/material.dart';
import './product.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _product = ['produk dummy'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _product.add('cobo aku jembere');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        // manggilproduct
        Product(_product)
      ],
    );
  }
}
