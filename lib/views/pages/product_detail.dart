import 'package:flutter/material.dart';

//map
class ProductDetailArguments {
  final String productName;
  final String productPrice;
  final String productImagePath;

  ProductDetailArguments({
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
  });
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  final ProductDetailArguments arguments;

  static const rountname = 'product_detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Product Name: ${arguments.productName}'),
          Text('Product Price: ${arguments.productPrice}'),
          Image.asset('${arguments.productImagePath}'),
        ],
      )),
    );
  }
}
