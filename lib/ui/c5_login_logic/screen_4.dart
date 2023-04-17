import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_1.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_2.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_3.dart';
import 'package:flutter_training/ui/c5_login_logic/validate_controller.dart';
import 'package:provider/provider.dart';

class Screen4 extends StatelessWidget {
  Screen4({Key? key}) : super(key: key);

  TextEditingController controller1 = ValidateController.textEditingController1;
  TextEditingController controller2 = ValidateController.textEditingController2;
  TextEditingController controller3 = ValidateController.textEditingController3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              "assets/image_c5/screen_4.png",
            ),
            fit: BoxFit.fitWidth,
            alignment: AlignmentDirectional.topStart,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 300,
            bottom: 20,
          ),
          physics: const ClampingScrollPhysics(),
          child: _buildCenterBody(),
        ),
      ),
    );
  }

  Widget _buildCenterBody() {
    return Builder(builder: (context) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image_c5/logo_marvel.png",
              width: 200,
              height: 85,
            ),
            const SizedBox(
              height: 100,
            ),
            Text(controller1.text, style: const TextStyle(color: Colors.white),),
            Text(controller2.text, style: const TextStyle(color: Colors.white),),
            Text(controller3.text, style: const TextStyle(color: Colors.white),),
            ElevatedButton(
              onPressed: () => _validateData(context),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(
                    horizontal: 130,
                    vertical: 15,
                  ),
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  void _validateData(BuildContext context) {
    if (controller1.text == "") {
      Navigator.popUntil(context, (route) => route.settings.name == "/screen1");
    } else if (controller2.text == "") {
      Navigator.popUntil(context, (route) => route.settings.name == "/screen2");
    } else if (controller3.text == "") {
      Navigator.popUntil(context, (route) => route.settings.name == "/screen3");
    } else {
      const snackBar = SnackBar(content: Text("Login Complete!"), );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      ValidateController.clearTextController();
      Navigator.popUntil(context, (route) => route.settings.name == "/");
    }
  }
}
