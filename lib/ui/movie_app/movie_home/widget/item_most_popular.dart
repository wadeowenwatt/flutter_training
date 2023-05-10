import 'package:flutter/material.dart';

class ItemMostPopular extends StatelessWidget {
  const ItemMostPopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(4, 5),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/image_c3/salad_landscape.jpg",
              fit: BoxFit.fill,
            ),
          ),
          const Positioned(
            left: 28,
            bottom: 10,
            child: Text(
              "Rau Cai Xoong",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 28,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "IMDb 8.5",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}