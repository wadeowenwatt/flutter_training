import 'package:flutter/material.dart';
import 'package:flutter_training/ui/c5_login_logic/screen_3.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

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
            const SizedBox(height: 135,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ),
                );
              },
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
}
