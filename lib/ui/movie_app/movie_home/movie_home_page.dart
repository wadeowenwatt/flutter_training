import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';
import 'package:flutter_training/route/route_screen.dart';
import 'package:flutter_training/ui/movie_app/movie_home/widget/custom_button.dart';
import 'package:flutter_training/ui/movie_app/movie_home/widget/indicator_widget.dart';
import 'package:flutter_training/ui/movie_app/movie_home/widget/item_most_popular.dart';
import 'package:flutter_training/ui/movie_app/movie_home/widget/item_upcoming_releases.dart';
import 'package:flutter_training/ui/movie_app/movie_home/widget/scale_and_fade_transformer.dart';
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
  late TransformerPageController pageControllerListMP;
  late TransformerPageController pageControllerListUC;
  late int selectedIndexMP;
  late int selectedIndexUC;

  @override
  void initState() {
    super.initState();
    pageControllerListMP = TransformerPageController(
      viewportFraction: 0.75,
      itemCount: 3,
      initialPage: 1,
    );
    pageControllerListUC = TransformerPageController(
      viewportFraction: 0.4,
      itemCount: 3,
      initialPage: 1,
    );
    selectedIndexMP = selectedIndexUC = 1;
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
              // SizedBox(
              //   height: mediaQuery.padding.top,
              // ),
              _buildRowAppBar(),
              _buildSearchBarWidget(),
              _buildMostPopular(mediaQuery),
              _buildRowButton(),
              _buildUpComing(mediaQuery),
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
          height: (mediaQuery.size.width - 100) * 141 / 328 + 15,
          width: mediaQuery.size.width,
          child: TransformerPageView(
            pageController: pageControllerListMP,
            itemCount: pageControllerListMP.itemCount,
            index: selectedIndexMP,
            transformer: ScaleAndFadeTransformer(
              scale: 0.8,
              fade: 0.5,
            ),
            onPageChanged: (index) {
              setState(() {
                selectedIndexMP = index;
              });
            },
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    if (index == selectedIndexMP) {
                      print("✊");
                      Navigator.pushNamed(context, RouteScreen.movieDetail);
                    };
                  },
                  child: const ItemMostPopular());
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildListIndicator(pageControllerListMP, selectedIndexMP),
        ),
      ],
    );
  }

  List<Widget> _buildListIndicator(
      TransformerPageController pageController, int selectIndex) {
    List<Widget> listIndicator = [];
    for (int i = 0; i < pageController.itemCount; i++) {
      if (i == selectIndex) {
        listIndicator.add(
          const IndicatorWidget(isActive: true),
        );
      } else {
        listIndicator.add(
          const IndicatorWidget(isActive: false),
        );
      }
    }
    return listIndicator;
  }

  Widget _buildRowButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomButton(
            assetPath: "assets/image_movie_app/ic_genres.png",
            title: "Genres",
          ),
          CustomButton(
            assetPath: "assets/image_movie_app/ic_tv_series.png",
            title: "TV Series",
          ),
          CustomButton(
            assetPath: "assets/image_movie_app/ic_movies.png",
            title: "Movies",
          ),
          CustomButton(
            assetPath: "assets/image_movie_app/ic_in_theater.png",
            title: "In Theater",
          ),
        ],
      ),
    );
  }

  Widget _buildUpComing(MediaQueryData mediaQuery) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
          child: Text(
            "Upcoming releases",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: mediaQuery.size.height * 2 / 7,
          width: mediaQuery.size.width,
          child: TransformerPageView(
            pageController: pageControllerListUC,
            itemCount: pageControllerListUC.itemCount,
            index: selectedIndexUC,
            transformer: ScaleAndFadeTransformer(
              scale: 0.95,
              fade: 0.4,
            ),
            onPageChanged: (index) {
              setState(() {
                selectedIndexUC = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    if (index == selectedIndexUC) {
                      print("👏");
                      Navigator.pushNamed(context, RouteScreen.movieDetail);
                    };
                  },
                  child: const ItemUpcomingReleases(),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildListIndicator(pageControllerListUC, selectedIndexUC),
        ),
      ],
    );
  }
}
