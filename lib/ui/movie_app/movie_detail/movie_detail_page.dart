import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/config/app_color.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MovieDetailPage();
  }
}

class _MovieDetailPage extends StatefulWidget {
  const _MovieDetailPage({Key? key}) : super(key: key);

  @override
  State<_MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<_MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/image_movie_app/images.jpeg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fitHeight,
            ),
            _buildMovieDetailBottomSheet(),
            /// Put btn back at the bottom of Stack, because it catches onTap event
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 30,
                ),
                child: SvgPicture.asset(
                  "assets/image_movie_app/ic_back.svg",
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieDetailBottomSheet() {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              gradient: AppColor.mainLinearGradient,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: ColoredBox(
                    color: Colors.white,
                    child: SizedBox(
                      width: 50,
                      height: 2,
                    ),
                  ),
                ),
                const Text(
                  "Thor",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "The Dark World",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CardDetail(
                            text: 'Action',
                            margin: const EdgeInsets.only(right: 10),
                            backgroundGradient: AppColor.buttonLinearGradient,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10
                            ),
                          ),
                          CardDetail(
                            text: '16+',
                            margin: const EdgeInsets.only(right: 10),
                            backgroundGradient: AppColor.buttonLinearGradient,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10
                            ),
                          ),
                          const CardDetail(
                            text: "IMDb 8.5",
                            backgroundColor: Colors.amber,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/image_movie_app/ic_share.svg"),
                          const SizedBox(width: 10),
                          SvgPicture.asset("assets/image_movie_app/ic_heart.svg"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    super.key,
    required this.text,
    this.margin,
    this.backgroundColor,
    this.backgroundGradient,
    this.style,
  });

  final String text;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final LinearGradient? backgroundGradient;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: backgroundColor,
          gradient: backgroundGradient,
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
