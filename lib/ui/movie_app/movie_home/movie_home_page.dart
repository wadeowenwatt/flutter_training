import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MovieHomePage();
  }
}

class _MovieHomePage extends StatefulWidget {
  const _MovieHomePage({Key? key}) : super(key: key);

  @override
  State<_MovieHomePage> createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<_MovieHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: _buildBody(mediaQuery),
    );
  }

  Widget _buildBody(MediaQueryData mediaQuery) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [AppColor.mainLinearColorLeft, AppColor.mainLinearColorRight],
      )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.padding.top,
            ),
            _buildRowAppBar(),
            _buildSearchBarWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildRowAppBar() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: "Hello, "),
                TextSpan(
                  text: "Jane",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              /// Todo
            },
            icon: const Icon(Icons.notifications_none_rounded),
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  // gradient: LinearGradient(
  // colors: [
  // AppColor.searchWidgetLinearColorLeft,
  // AppColor.searchWidgetLinearColorRight,
  // ],
  // )
  Widget _buildSearchBarWidget() {
    return Container(
      margin: const EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColor.searchWidgetLinearColorLeft,
              AppColor.searchWidgetLinearColorRight,
            ],
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Colors.white,
                )),
          ),
          const Positioned(
            child: VerticalDivider(
              color: Colors.red,
              width: 1,
            ),
          ),
        ],
      ),
    );
  }
}
