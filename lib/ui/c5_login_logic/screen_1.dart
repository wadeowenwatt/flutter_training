import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_2.dart';
import 'package:flutter_training/ui/c5_login_logic/validate_controller.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              "assets/image_c5/screen_1.png",
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
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 50),
              child: TextField(
                controller: ValidateController.textEditingController1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                ),
                // onChanged: (text) {
                //   controller.text = text;
                // },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
              child: Text(
                "All your favourite\nMARVEL Movies & Series\nat one place",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/screen2",
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(
                    horizontal: 130,
                    vertical: 15,
                  ),
                ),
              ),
              child: const Text(
                "Continue",
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
}
