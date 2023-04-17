import 'package:flutter/material.dart';

class ValidateController {
  static TextEditingController textEditingController1 = TextEditingController();
  static TextEditingController textEditingController2 = TextEditingController();
  static TextEditingController textEditingController3 = TextEditingController();

  static void clearTextController() {
    textEditingController1.text = "";
    textEditingController2.text = "";
    textEditingController3.text = "";
  }
}