import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    double _size = 20;

    return Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: <Widget>[
      // ດາວ 1
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
          onPressed: () {
            setState(() {
              if (_rating == 1) {
                _rating = 0;
              } else {
                _rating = 1;
              }
            });
          },
          icon: (_rating >= 1) ? Icon(Icons.star) : Icon(Icons.star_border),
          color: Colors.red[500],
          iconSize: _size,
        ),
      ),
      // ດາວ 2
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
          onPressed: () {
            setState(() {
              _rating = 2;
            });
          },
          icon: (_rating >= 2) ? Icon(Icons.star) : Icon(Icons.star_border),
          color: Colors.red[500],
          iconSize: _size,
        ),
      ),
      // ດາວ 3
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
          onPressed: () {
            setState(() {
              _rating = 3;
            });
          },
          icon: (_rating >= 3) ? Icon(Icons.star) : Icon(Icons.star_border),
          color: Colors.red[500],
          iconSize: _size,
        ),
      ),
    ]);
  }
}
