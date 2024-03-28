import 'package:flutter/material.dart';
import 'package:myapp/models/product_model.dart';
import 'package:myapp/widgets/rating_box_scope.dart';
import 'package:myapp/widgets/rating_box_widget.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.item});
  // 1
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      height: 142,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(width: 10.0),
            Image.asset(
              // 2
              item.image,
              fit: BoxFit.fitHeight,
              height: 70,
              width: 70,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: ScopedModel<Product>(
                  model: item,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        // 3
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // 4
                        item.description,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            // 5
                            "Price: \$${item.price}",
                            style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // 6
                          ScopedModelDescendant<Product>(
                            builder: (context, child, model) {
                              return RatingBoxWidget(item: item);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
