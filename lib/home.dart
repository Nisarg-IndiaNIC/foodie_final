import 'package:flutter/material.dart';
import 'package:foodie_final/FoodChain/food_since.dart';
import 'package:foodie_final/Footer/footer_main.dart';
import 'package:foodie_final/Header/headermain.dart';
import 'package:foodie_final/Items/scroll_item.dart';
import 'package:foodie_final/OurChef/chef_main.dart';
import 'package:foodie_final/WhatTheySay/say_main.dart';
import 'package:foodie_final/WhatWeServe/what_serve_main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final serviceKey = GlobalKey();
  final homeKey = GlobalKey();
  final menuKey = GlobalKey();
  final contactKey = GlobalKey();
  String homehead = 'first';

  Future scrollToservice() async {
    final context = serviceKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollTohome() async {
    final context = homeKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollTomenu() async {
    final context = menuKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  Future scrollTocontact() async {
    final context = contactKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Container(
          padding: const EdgeInsets.only(left: 150, right: 150, top: 52),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/footerlogo.png',
                            height: MediaQuery.of(context).size.height * 0.07,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Text(
                            'Foodie',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.06,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              scrollTohome();
                              setState(() {
                                homehead = 'first';
                              });
                            },
                            child: Text('Home',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: homehead == 'first'
                                        ? const Color(0xffff5344)
                                        : Colors.black)),
                          ),
                          const SizedBox(width: 72),
                          InkWell(
                            onTap: () {
                              scrollToservice();
                              setState(() {
                                homehead = 'sec';
                              });
                            },
                            child: Text('Services',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: homehead == 'sec'
                                        ? const Color(0xffff5344)
                                        : Colors.black)),
                          ),
                          const SizedBox(width: 72),
                          InkWell(
                            onTap: () {
                              scrollTomenu();
                              setState(() {
                                homehead = 'third';
                              });
                            },
                            child: Text('Menu',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: homehead == 'third'
                                        ? const Color(0xffff5344)
                                        : Colors.black)),
                          ),
                          const SizedBox(width: 72),
                          InkWell(
                            onTap: () {
                              scrollTocontact();
                              setState(() {
                                homehead = 'fourth';
                              });
                            },
                            child: Text('Contact',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: homehead == 'fourth'
                                        ? const Color(0xffff5344)
                                        : Colors.black)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.search,
                            size: 30,
                          ),
                          const SizedBox(width: 40),
                          const Icon(
                            Icons.shopping_bag_outlined,
                            size: 30,
                          ),
                          const SizedBox(width: 40),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 55, right: 55, top: 20, bottom: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xffff5344),
                                borderRadius: BorderRadius.circular(36),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffff5344),
                                    blurRadius: 5,
                                    spreadRadius: 1.0,
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(key: homeKey, child: const HeaderMain()),
            const SizedBox(height: 150),
            Container(key: serviceKey, child: const WhatWeServe()),
            const SizedBox(height: 150),
            const OurChefPic(),
            const SizedBox(height: 150),
            Container(key: menuKey, child: const ScrollItems()),
            const SizedBox(height: 150),
            const FoodChain(),
            const SizedBox(height: 150),
            const SayMain(),
            const SizedBox(
              height: 100,
            ),
            Container(key: contactKey, child: const FooterMain())
          ],
        ),
      ),
    );
  }
}
