import 'package:flutter/material.dart';

class ItemSaladHorizontal extends StatelessWidget {
  final String nameFood;
  final int numberRecipes;
  final String imageFood;

  const ItemSaladHorizontal({
    Key? key,
    required this.nameFood,
    required this.numberRecipes,
    required this.imageFood,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: deviceWidth - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.green,
            image: DecorationImage(
              image: AssetImage(imageFood),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameFood,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "$numberRecipes recipes",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
