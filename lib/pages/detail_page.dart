import 'package:flutter/material.dart';
import 'package:sliders/widgets/app_button.dart';
import 'package:sliders/widgets/app_large_text.dart';
import 'package:sliders/widgets/app_text.dart';
import 'package:sliders/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _gottenStars = 3;
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/welcome_two.jpg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                left: 10,
                top: 30,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                      ),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 250,
                child: Container(
                  padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: 'Yosemite', color: Colors.indigo),
                          AppLargeText(text: '\$ 250', color: Colors.amber),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.location_on, color: Colors.blueGrey),
                          const SizedBox(width: 5),
                          AppText(
                              text: 'USA,California', color: Colors.blueGrey)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(Icons.star,
                                    color: index < _gottenStars
                                        ? Colors.amber
                                        : Colors.grey)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppText(text: '$_gottenStars')
                        ],
                      ),
                      const SizedBox(height: 25),
                      AppLargeText(
                          text: "People", color: Colors.black, size: 20),
                      AppText(text: 'Number of people in your group'),
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: AppButtons(
                                        // isIcon: true,
                                        // icon: Icons.favorite_border,
                                        text: (index + 1).toString(),
                                        size: 50,
                                        color: _selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        backgroundColor: _selectedIndex == index
                                            ? Colors.black
                                            : Colors.white,
                                        borderColor: _selectedIndex == index
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                                )),
                      ),
                      const SizedBox(height: 20),
                      AppLargeText(
                          text: 'Description',
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      AppText(text: 'Traverl helps u', color: Colors.grey),
                    ],
                  ),
                )),
            Positioned(
              bottom: 20,
                left: 20,
                right: 20,
                child: Row(
              children: [
                AppButtons(
                    size: 60,
                    color: Colors.grey,
                    isIcon: true,
                    icon: Icons.favorite_border,
                    backgroundColor: Colors.white,
                    borderColor: Colors.grey),
                const SizedBox(width: 20),
                ResponsiveButton(isResponsive: true,)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
