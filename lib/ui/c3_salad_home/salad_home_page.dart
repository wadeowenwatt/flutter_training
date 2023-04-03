import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_color.dart';
import 'package:flutter_training/ui/c3_salad_home/widget/item_salad_grid_view.dart';
import 'package:flutter_training/ui/c3_salad_home/widget/item_salad_horizontal.dart';

class SaladHomePage extends StatefulWidget {
  const SaladHomePage({Key? key}) : super(key: key);

  @override
  State<SaladHomePage> createState() => _SaladHomePageState();
}

class _SaladHomePageState extends State<SaladHomePage> {
  late IconData icMarkGridViewFill;
  late IconData icMarkGridViewNotFill;
  late Color colorBgIcon;

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      if (colorBgIcon == Colors.red) {
        icMarkGridViewFill = Icons.search;
        icMarkGridViewNotFill = Icons.search;
        colorBgIcon = Colors.yellow;
      } else {
        icMarkGridViewFill = Icons.bookmark;
        icMarkGridViewNotFill = Icons.bookmark_border_rounded;
        colorBgIcon = Colors.red;
      }
    });
  }

  @override
  void initState() {
    icMarkGridViewFill = Icons.bookmark;
    icMarkGridViewNotFill = Icons.bookmark_border_rounded;
    colorBgIcon = Colors.red;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: AppColor.colorDarkText,
          ),
        ),
        title: const Text(
          "Salad",
          style: TextStyle(
            color: AppColor.colorDarkText,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.search,
              color: AppColor.colorDarkText,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await _onRefresh();
          },
          child: _screenBody(deviceWidth, deviceHeight),
        ),
      ),
    );
  }

  Widget _screenBody(double deviceWidth, double deviceHeight) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildListSaladHorizontal(deviceWidth, deviceHeight),
            const SizedBox(
              height: 15,
            ),
            _buildRowTitle(),
            const SizedBox(
              height: 15,
            ),
            _buildGridViewSalad(deviceWidth, deviceHeight),
          ],
        ),
      ),
    );
  }

  Widget _buildListSaladHorizontal(double deviceWidth, double deviceHeight) {
    return SizedBox(
      width: deviceWidth - 40,
      height: deviceHeight * .2,
      child: ListView.separated(
        itemCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const ItemSaladHorizontal(
            nameFood: "Salad",
            numberRecipes: 13323,
            imageFood: "assets/image_c3/salad_landscape.jpg",
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  Widget _buildRowTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Sort by",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Row(
          children: const [
            Text(
              "Most Popular",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.swap_vert_outlined,
              color: Colors.red,
            )
          ],
        )
      ],
    );
  }

  Widget _buildGridViewSalad(double deviceWidth, double deviceHeight) {
    return SizedBox(
      width: deviceWidth - 40,
      height: deviceHeight * .6,
      child: GridView.builder(
        itemCount: 6,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          return ItemSaladGridView(
            index: index,
            imageSalad: 'assets/image_c3/salad_portrait.jpeg',
            iconFill: icMarkGridViewFill,
            iconNotFill: icMarkGridViewNotFill,
            colorBgIcon: colorBgIcon,
          );
        },
      ),
    );
  }


}
