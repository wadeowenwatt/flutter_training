import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, required this.assetPath, required this.title,
  }) : super(key: key);

  final String assetPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
        gradient: AppColor.buttonLinearGradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              assetPath,
              width: 32,
              height: 32,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}