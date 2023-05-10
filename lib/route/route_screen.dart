
import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_1.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_2.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_3.dart';
import 'package:flutter_training/ui/main_home/main_home_page.dart';
import 'package:flutter_training/ui/movie_app/movie_detail/movie_detail_page.dart';
import 'package:flutter_training/ui/movie_app/movie_home/movie_home_page.dart';

import '../ui/c5_login_logic/screen_4.dart';

class RouteScreen {
  static const String mainHome = "/";
  static const String screen1 = "/screen1";
  static const String screen2 = "/screen2";
  static const String screen3 = "/screen3";
  static const String screen4 = "/screen4";
  static const String movieApp = "/movieApp";
  static const String movieDetail = "/movieApp/detailMovie";

  static Map<String, WidgetBuilder> routes = {
    mainHome: (context) => const MainHomePage(),
    screen1: (context) => const Screen1(),
    screen2: (context) => const Screen2(),
    screen3: (context) => const Screen3(),
    screen4: (context) => Screen4(),
    movieApp: (context) => const MovieHomePage(),
    movieDetail: (context) => const MovieDetailPage(),
  };
}