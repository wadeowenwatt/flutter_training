import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/ui/c4_assets_practice/c4_video_page.dart';

class C4HomePage extends StatelessWidget {
  const C4HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Hero(
          tag: "testHero",
          child: Text("C4 Assignment"),
        ),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Builder(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Textfield with PNG prefix Icon"),
              _buildTextFieldPng(),
              const SizedBox(
                height: 20,
              ),
              const Text("Textfield with SVG prefix Icon"),
              _buildTextFieldSvg(),
              const SizedBox(
                height: 20,
              ),
              _buildPersonCard(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const C4VideoPage()),
                  );
                },
                child: const Text("Video screen"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldPng() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.black12,
            hintText: "FAQ",
            prefixIcon: Image.asset('assets/image_c4/Image/FAQ/FAQ.png'),
            filled: true,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.black12,
            hintText: "Contact Us",
            prefixIcon: Image.asset('assets/image_c4/Image/Groups/Group.png'),
            filled: true,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.black12,
            hintText: "Terms & Conditions",
            prefixIcon: Image.asset('assets/image_c4/Image/Terms/terms.png'),
            filled: true,
          ),
        )
      ],
    );
  }

  Widget _buildPersonCard() {
    return const Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png",
          ),
        ),
        title: Text(
          "@airplanes45",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Sarah Paul",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildTextFieldSvg() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.black12,
            hintText: "FAQ",
            prefixIcon: SvgPicture.asset(
              'assets/image_c4/Svg/FAQ.svg',
              fit: BoxFit.scaleDown,
            ),
            filled: true,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.black12,
            hintText: "Contact Us",
            prefixIcon: SvgPicture.asset(
              'assets/image_c4/Svg/Contact.svg',
              fit: BoxFit.scaleDown,
            ),
            filled: true,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.black12,
            hintText: "Terms & Conditions",
            prefixIcon: SvgPicture.asset(
              'assets/image_c4/Svg/terms.svg',
              fit: BoxFit.scaleDown,
            ),
            filled: true,
          ),
        )
      ],
    );
  }
}
