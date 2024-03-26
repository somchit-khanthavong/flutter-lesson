import 'package:flutter/material.dart';
import 'package:myapp/widgets/productbox.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const <Widget>[
          ProductBox(
            name: "Iphone 14 Pro",
            description: "ໄອໂຟນ 14 ໂປຣເປັນໂທລະສັບທີ່ມີປະສິດທິພາບຫຼາຍ ໃນບັນດາໄອໂຟນໃນປະຈຸບັນ",
            price: 1000,
            image: "assets/images/iphone.png",
          ),
          ProductBox(
            name: "Samsung S24 Ultra",
            description:
                "Laboris exercitation et est do sit non voluptate ea ex sunt anim labore culpa id. Ullamco duis incididunt cillum esse consectetur culpa officia nostrud eiusmod. Excepteur cupidatat id Lorem reprehenderit adipisicing aliqua eu proident ipsum. Occaecat labore ipsum aliqua ullamco fugiat nisi consectetur dolore adipisicing magna amet. Aliqua dolor duis adipisicing velit deserunt quis officia ad proident commodo tempor ea ipsum. Incididunt est eiusmod cillum amet cillum velit deserunt. Do sit est nulla magna est enim ipsum id.",
            price: 758,
            image: "assets/images/samsung.png",
          ),
          ProductBox(
            name: "Huawei P50",
            description:
                "Laborum ullamco duis minim non ullamco minim. Ut commodo elit ex consequat ullamco culpa sit veniam enim id pariatur nisi officia sit. Quis nostrud consectetur duis aliquip qui et minim eu ad incididunt eu veniam sunt fugiat. Deserunt ea anim laborum duis ipsum incididunt ad sint.",
            price: 560,
            image: "assets/images/huawei.png",
          ),
          ProductBox(
            name: "Oppo Find X",
            description:
                "Laboris exercitation et est do sit non voluptate ea ex sunt anim labore culpa id. Ullamco duis incididunt cillum esse consectetur culpa officia nostrud eiusmod. Excepteur cupidatat id Lorem reprehenderit adipisicing aliqua eu proident ipsum. Occaecat labore ipsum aliqua ullamco fugiat nisi consectetur dolore adipisicing magna amet. Aliqua dolor duis adipisicing velit deserunt quis officia ad proident commodo tempor ea ipsum. Incididunt est eiusmod cillum amet cillum velit deserunt. Do sit est nulla magna est enim ipsum id.",
            price: 758,
            image: "assets/images/oppo.png",
          ),
          ProductBox(
            name: "Pixel 6",
            description:
                "Exercitation anim esse amet sint magna culpa elit non sunt deserunt eiusmod laboris laborum. Velit tempor duis sint magna reprehenderit aliqua sint. Reprehenderit excepteur proident excepteur tempor culpa magna cillum nostrud. Dolore pariatur dolore cillum excepteur enim elit voluptate. Irure duis non cillum cupidatat non in ea nulla ullamco labore.",
            price: 250,
            image: "assets/images/pixel.png",
          ),
          ProductBox(
            name: "HP Laptop",
            description:
                "Laboris exercitation et est do sit non voluptate ea ex sunt anim labore culpa id. Ullamco duis incididunt cillum esse consectetur culpa officia nostrud eiusmod. Excepteur cupidatat id Lorem reprehenderit adipisicing aliqua eu proident ipsum. Occaecat labore ipsum aliqua ullamco fugiat nisi consectetur dolore adipisicing magna amet. Aliqua dolor duis adipisicing velit deserunt quis officia ad proident commodo tempor ea ipsum. Incididunt est eiusmod cillum amet cillum velit deserunt. Do sit est nulla magna est enim ipsum id.",
            price: 758,
            image: "assets/images/laptop.png",
          ),
          ProductBox(
            name: "Tablet",
            description:
                "Laboris exercitation et est do sit non voluptate ea ex sunt anim labore culpa id. Ullamco duis incididunt cillum esse consectetur culpa officia nostrud eiusmod. Excepteur cupidatat id Lorem reprehenderit adipisicing aliqua eu proident ipsum. Occaecat labore ipsum aliqua ullamco fugiat nisi consectetur dolore adipisicing magna amet. Aliqua dolor duis adipisicing velit deserunt quis officia ad proident commodo tempor ea ipsum. Incididunt est eiusmod cillum amet cillum velit deserunt. Do sit est nulla magna est enim ipsum id.",
            price: 150,
            image: "assets/images/tablet.png",
          ),
          ProductBox(
            name: "Logo",
            description:
                "Laboris exercitation et est do sit non voluptate ea ex sunt anim labore culpa id. Ullamco duis incididunt cillum esse consectetur culpa officia nostrud eiusmod. Excepteur cupidatat id Lorem reprehenderit adipisicing aliqua eu proident ipsum. Occaecat labore ipsum aliqua ullamco fugiat nisi consectetur dolore adipisicing magna amet. Aliqua dolor duis adipisicing velit deserunt quis officia ad proident commodo tempor ea ipsum. Incididunt est eiusmod cillum amet cillum velit deserunt. Do sit est nulla magna est enim ipsum id.",
            price: 100,
            image: "assets/images/SNice.png",
          ),
          ProductBox(
            name: "Raspberry Pi 5",
            description:
                "Laboris exercitation et est do sit non voluptate ea ex sunt anim labore culpa id. Ullamco duis incididunt cillum esse consectetur culpa officia nostrud eiusmod. Excepteur cupidatat id Lorem reprehenderit adipisicing aliqua eu proident ipsum. Occaecat labore ipsum aliqua ullamco fugiat nisi consectetur dolore adipisicing magna amet. Aliqua dolor duis adipisicing velit deserunt quis officia ad proident commodo tempor ea ipsum. Incididunt est eiusmod cillum amet cillum velit deserunt. Do sit est nulla magna est enim ipsum id.",
            price: 30,
            image: "assets/images/71u2Od-VqZL.jpg",
          ),
        ],
      ),
    );
  }
}
