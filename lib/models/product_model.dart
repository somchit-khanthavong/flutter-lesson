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
    String texts = """
        Aliquip dolore mollit amet qui exercitation qui non elit cupidatat consequat sunt ullamco. Incididunt eiusmod velit commodo anim pariatur dolore pariatur tempor ea ullamco laboris id. Ipsum sint sint pariatur fugiat anim ut. Tempor in commodo veniam amet consequat.
        Consectetur reprehenderit anim Lorem voluptate ut quis amet consequat ex in. Est esse pariatur est occaecat ut occaecat eu dolor aute enim officia in consectetur. Ullamco consequat enim consequat in magna irure fugiat esse incididunt aute est eu in adipisicing. Nisi fugiat cillum sit voluptate nulla culpa ut laborum anim est. Eu voluptate non ea occaecat cupidatat quis nostrud non excepteur et dolore. Esse ea ad reprehenderit aliqua sint consectetur officia ex veniam sit cillum nisi in.""";
    List<Product> items = <Product>[];

    items.add(Product(
      'Iphone 14 Pro',
      texts,
      1000,
      'assets/images/iphone.png',
      0,
    ));

    items.add(Product(
      'Samsung S24 Ultra',
      texts,
      758,
      'assets/images/samsung.png',
      0,
    ));

    return items;
  }
}
