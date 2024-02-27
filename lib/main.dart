import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Product Layout Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const <Widget>[
          ProductBox(
            name: "Iphone 14 Pro",
            description: "iPhone 14 Pro. Capture incredible detail with a 48MP Main camera.",
            price: 2299,
            image: "assets/images/iphone.png",
          ),
          ProductBox(
            name: "Samsung Galaxy S24 Ultra",
            description: "The Samsung Galaxy S24 Ultra comes with 6.8-nch Dynamic AMOLED display with 120Hz refresh rate and Qualcomm Snapdragon 8 Gen 3 processor.",
            price: 1420,
            image: "assets/images/samsung.png",
          ),
          ProductBox(
            name: "HP EliteBook 805 G8 Series",
            description:
                "Confidently connect and ease powerfully through your day in almost any setting with the beautifully designed and highly secure HP EliteBook 805 G8 series.",
            price: 569,
            image: "assets/images/laptop.png",
          ),
          ProductBox(
            name: "Oppo Find X6 Pro",
            description:
                "OPPO Find X6 Pro runs on ColorOS 13 based on the Android 13 OS operating system that offers a fresh, fast platform to help you stay connected and productive while you're on the go.",
            price: 799,
            image: "assets/images/oppo.png",
          ),
          ProductBox(
            name: "Huawei Mate 50 Pro",
            description: "Huawei Mate 50 Pro · Released 2022, September 28 · 205g / 209g, 8.5mm thickness · EMUI 13; HarmonyOS 3.0 · 256GB/512GB storage, NM.",
            price: 785,
            image: "assets/images/huawei.png",
          ),
          ProductBox(
            name: "Google Pixel 8 Pro",
            description: "Meet Pixel 8 and Pixel 8 Pro, engineered by Google and built with AI at the center for a more helpful and personal experience.",
            price: 999,
            image: "assets/images/pixel.png",
          ),
          ProductBox(
            name: "Tablet 10.1 inch Android 12",
            description:
                "Tablet 10.1 inch Android 12 Tablet 2023 Latest Update Octa-Core Processor with 64GB Storage, Dual 13MP+5MP Camera, WiFi, Bluetooth, GPS, 512GB Expand Support, IPS Full HD Display (Black)",
            price: 117,
            image: "assets/images/tablet.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.name, required this.description, required this.price, required this.image});

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              width: 10.0,
            ),
            Image.asset(
              image,
              fit: BoxFit.fitHeight,
              height: 70,
              width: 70,
              alignment: Alignment.center,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      maxLines: 2,
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
