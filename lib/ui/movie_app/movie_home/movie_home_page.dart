import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';
import 'package:flutter_training/ui/movie_app/movie_home/widget/ScaleAndFadeTransformer.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

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
  late TransformerPageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = TransformerPageController(
      viewportFraction: 0.75,
      itemCount: 3,
      initialPage: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: _buildBody(mediaQuery),
    );
  }

  Widget _buildBody(MediaQueryData mediaQuery) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColor.mainLinearGradient,
      ),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ///
              // SizedBox(
              //   height: mediaQuery.padding.top,
              // ),
              _buildRowAppBar(),
              _buildSearchBarWidget(),
              _buildMostPopular(mediaQuery),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 65, right: 50, top: 15),
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
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Colors.white.withOpacity(0.76),
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBarWidget() {
    return Container(
      margin: const EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      decoration: BoxDecoration(
        gradient: AppColor.searchBoxBgLinearGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.7),
                  )),
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              prefixIcon: Icon(
                Icons.search_rounded,
                color: Colors.white.withOpacity(0.5),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.3),
              ),
              suffixIcon: Icon(
                Icons.mic_none_outlined,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMostPopular(MediaQueryData mediaQuery) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
          child: Text(
            "Most Popular",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: (mediaQuery.size.width - 100) * 141 / 328,
          width: mediaQuery.size.width,
          child: TransformerPageView(
            pageController: pageController,
            itemCount: pageController.itemCount,
            transformer: ScaleAndFadeTransformer(
              scale: 0.8,
              fade: 0.3,
            ),
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/image_c3/salad_landscape.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                    left: 28,
                    bottom: 10,
                    child: Text(
                      "Rau Cai Xoong",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 28,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "IMDb 8.5",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
