import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_1.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_2.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_3.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_4.dart';
import 'package:flutter_training/ui/main_home/main_home_page.dart';
import 'package:flutter_training/ui/movie_app/movie_home/movie_home_page.dart';

void main() {
  runApp(const FlutterTrainingSeries());
}

class FlutterTrainingSeries extends StatefulWidget {
  const FlutterTrainingSeries({Key? key}) : super(key: key);

  @override
  State<FlutterTrainingSeries> createState() => _FlutterTrainingSeriesState();
}

class _FlutterTrainingSeriesState extends State<FlutterTrainingSeries> {

  /// Comment logic change theme of C3 assignment

  // bool isDark = false;
  //
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //         title: 'Flutter Demo',
  //         theme: ThemeData(
  //           appBarTheme: const AppBarTheme(
  //             color: Colors.white,
  //           ),
  //         ),
  //         darkTheme: ThemeData.dark(),
  //         themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
  //         home: Scaffold(
  //           appBar: AppBar(
  //             leading: IconButton(
  //               onPressed: () {},
  //               icon: const Icon(
  //                 Icons.arrow_back_rounded,
  //                 color: AppColor.colorDarkText,
  //               ),
  //             ),
  //             title: const Text(
  //               "Salad",
  //               style: TextStyle(
  //                 color: AppColor.colorDarkText,
  //               ),
  //             ),
  //             actions: [
  //               IconButton(
  //                 onPressed: () {
  //                   changeTheme();
  //                 },
  //                 icon: const Icon(
  //                   Icons.search,
  //                   color: AppColor.colorDarkText,
  //                 ),
  //               ),
  //             ],
  //             elevation: 0,
  //           ),
  //           body: const SaladHomePage(),
  //         ),
  //       );
  // }
  //
  // void changeTheme() {
  //   setState(() {
  //     isDark ? isDark = false : isDark = true;
  //   });
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainHomePage(),
        '/screen1': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
        '/screen4': (context) => Screen4(),
        '/movieApp': (context) => const MovieHomePage(),
      },
    );
  }
}
