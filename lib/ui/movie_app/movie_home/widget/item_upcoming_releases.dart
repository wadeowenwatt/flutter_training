import 'package:flutter/material.dart';

class ItemUpcomingReleases extends StatelessWidget {
  const ItemUpcomingReleases({
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
              "assets/image_c3/salad_portrait.jpeg",
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}