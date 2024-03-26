import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.name, required this.description, required this.price, required this.image});

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(width: 10.0),
            Image.asset(
              image,
              fit: BoxFit.fitHeight,
              height: 70,
              width: 70,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "Touk2"),
                    ),
                    Text(
                      "Price: \$$price",
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
