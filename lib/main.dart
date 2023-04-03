import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';
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
            appBarTheme: const AppBarTheme(
              color: Colors.white,
            ),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          home: const SaladHomePage(),
        );
  }
}
