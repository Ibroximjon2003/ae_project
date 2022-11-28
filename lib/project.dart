import 'package:ae_project/buy_product.dart';
import 'package:ae_project/wishlist.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  final List _posts = [
    'Eco-Store',
    'Eco-Store',
    'Eco-Store',
    'Eco-Store',
    'Eco-Store',
    'Eco-Store',
  ];
  final List _stories = [
    'Tashkent',
    'Samarqand',
    'Buxoro',
    'Namangan',
    'Farg\'ona',
    'Andijon',
  ];
  final List _images = [
    'assets/drop.png',
    'assets/recycle.jpg',
    'assets/drop.png',
    'assets/water.jpg',
    'assets/recycle.jpg',
    'assets/drop.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.store_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: ((context, index) => MyCircle(
                      child: _stories[index],
                    )),
              )),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) => MySquare(
                image: _images[index],
                child: _posts[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCircle extends StatelessWidget {
  final String child;

  const MyCircle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Column(
            children: [
              Text('Our fillials'),
              SizedBox(height: 30),
              Text(
                child,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySquare extends StatelessWidget {
  final String child;
  final String image;

  const MySquare({required this.child, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                Image.asset(image),
                Center(
                  child: Text(
                    child,
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => BuyingProductScreen())));
                },
                child: Text('Buy'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => WishListScreen())));
                },
                child: Text('Add wishlist'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
