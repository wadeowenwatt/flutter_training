import 'package:flutter/material.dart';
import 'package:flutter_training/route/route_screen.dart';
import 'package:flutter_training/ui/c3_salad_home/salad_home_page.dart';
import 'package:flutter_training/ui/c4_assets_practice/c4_home_page.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_1.dart';
import 'package:flutter_training/ui/movie_app/movie_home/movie_home_page.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SaladHomePage(),
              ),
            ),
            child: const Text("C3 Assignment"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const C4HomePage(),
              ),
            ),
            child: const Hero(
              tag: "testHero",
              child: Text("C4 Assignment"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              RouteScreen.screen1,
            ),
            child: const Text("C5 Assignment"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              RouteScreen.movieApp,
            ),
            child: const Text("Movie App"),
          ),
        ],
      ),
    ));
  }
}
