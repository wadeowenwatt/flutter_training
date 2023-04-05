import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';
import 'package:flutter_training/ui/c3_salad_home/salad_home_page.dart';
import 'package:flutter_training/ui/c4_assets_practice/c4_home_page.dart';
import 'package:flutter_training/ui/c4_assets_practice/c4_video_page.dart';
import 'package:flutter_training/ui/c4_assets_practice/c4_youtube_page.dart';
import 'package:flutter_training/ui/main_home/main_home_page.dart';

void main() {
  runApp(const FlutterTrainingSeries());
}

class FlutterTrainingSeries extends StatefulWidget {
  const FlutterTrainingSeries({Key? key}) : super(key: key);

  @override
  State<FlutterTrainingSeries> createState() => _FlutterTrainingSeriesState();
}

class _FlutterTrainingSeriesState extends State<FlutterTrainingSeries> {
  /*
  Comment logic change theme of C3 assignment
   */
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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: const MainHomePage(),
    );
  }

}
