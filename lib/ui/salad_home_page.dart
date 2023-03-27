import 'package:flutter/material.dart';

class SaladHomePage extends StatefulWidget {
  const SaladHomePage({Key? key}) : super(key: key);

  @override
  State<SaladHomePage> createState() => _SaladHomePageState();
}

class _SaladHomePageState extends State<SaladHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salad"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],

      ),
    );
  }
}
