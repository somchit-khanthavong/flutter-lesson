import 'package:flutter/material.dart';
import 'package:myapp/models/product_model.dart';

class RatingBoxWidget extends StatelessWidget {
  const RatingBoxWidget({super.key, required this.item});
  final Product item;

  @override
  Widget build(BuildContext context) {
    double _size = 20;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        // ດາວ 1
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              if (item.rating == 1) {
                item.updateRating(0);
              } else {
                item.updateRating(1);
              }
            },
            icon: (item.rating >= 1) ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red[500],
            iconSize: _size,
          ),
        ),
        // ດາວ 2
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              item.updateRating(2);
            },
            icon: (item.rating >= 2) ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red[500],
            iconSize: _size,
          ),
        ),
        // ດາວ 3
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              item.updateRating(3);
            },
            icon: (item.rating >= 3) ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red[500],
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
