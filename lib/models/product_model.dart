import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final double price;
  final String image;
  int rating;

  Product(this.name, this.description, this.price, this.image, this.rating);

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['name'], // 'name' : 'Iphone 14 Pro',
      json['description'], // 'description' : 'best phone in the world',
      json['price'], // 'price' : 1000
      json['image'], // 'image' : 'assets/images/iphone.png'
      json['rating'], // 'rating' : 0
    );
  }

  void updateRating(int newRating) {
    rating = newRating;

    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product(
      'Iphone 14 Pro',
      'Best phone in the world',
      1000,
      'assets/images/iphone.png',
      0,
    ));

    items.add(Product(
      'Samsung S24 Ultra',
      'Best Android phone in the world',
      758,
      'assets/images/samsung.png',
      0,
    ));

    return items;
  }
}
