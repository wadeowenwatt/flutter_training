import 'package:flutter/material.dart';

class ItemSaladGridView extends StatelessWidget {
  final int index;
  final String imageSalad;
  final IconData iconFill;
  final IconData iconNotFill;
  final Color colorBgIcon;

  const ItemSaladGridView({
    Key? key,
    required this.index,
    required this.imageSalad,
    required this.iconFill,
    required this.iconNotFill,
    required this.colorBgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              // color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageSalad),
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorBgIcon,
            ),
            child: Icon(
              size: 20,
              (index % 3 == 0) ? iconFill : iconNotFill,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Absdsdsds",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image_c3/avatar.jpeg"),
                    radius: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Kevin Hart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
