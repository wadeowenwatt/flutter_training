import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        height: 9,
        width: 9,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: isActive
              ? AppColor.indicatorLinearGradientActive
              : AppColor.indicatorLinearGradientNonActive,
        ),
      ),
    );
  }
}