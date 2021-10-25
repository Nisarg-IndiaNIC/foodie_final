import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodie_final/size.dart';

class FoodChain extends StatefulWidget {
  const FoodChain({Key? key}) : super(key: key);

  @override
  _FoodChainState createState() => _FoodChainState();
}

class _FoodChainState extends State<FoodChain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            height: 337,
            width: double.infinity,
            color: const Color(0xffffe4e2),
            child: CarouselSlider(
                items: [
                  Image.asset('assets/1.png'),
                  Image.asset('assets/2.png'),
                  Image.asset('assets/3.png'),
                  Image.asset('assets/4.png'),
                  Image.asset('assets/5.png')
                ],
                options: CarouselOptions(
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
          )
        : ResponsiveWidget.isMediumScreen(context)
            ? Container(
                height: 337,
                width: double.infinity,
                color: const Color(0xffffe4e2),
                child: CarouselSlider(
                    items: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/1.png'),
                          Image.asset('assets/2.png'),
                          Image.asset('assets/3.png'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/4.png'),
                          Image.asset('assets/5.png')
                        ],
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
              )
            : Container(
                height: 337,
                color: const Color(0xffffe4e2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/1.png'),
                    Image.asset('assets/2.png'),
                    Image.asset('assets/3.png'),
                    Image.asset('assets/4.png'),
                    Image.asset('assets/5.png')
                  ],
                ),
              );
  }
}
