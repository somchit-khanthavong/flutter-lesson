import 'package:flutter/material.dart';
import 'package:myapp/models/product_model.dart';
import 'package:myapp/screens/product_details.dart';
import 'package:myapp/widgets/productbox.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product List",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductDetailPage(item: items[index]);
                  },
                ),
              );
            },
            child: ProductBox(item: items[index]),
          );
        },
      ),
    );
  }
}
