import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c3_salad_home/salad_home_page.dart';

void main() {
  runApp(const FlutterTrainingSeries());
}

class FlutterTrainingSeries extends StatelessWidget {
  const FlutterTrainingSeries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const SaladHomePage(),
    );
  }
}

