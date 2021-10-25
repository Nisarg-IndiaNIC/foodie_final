import 'package:flutter/material.dart';
import 'package:foodie_final/FoodChain/food_since.dart';
import 'package:foodie_final/Footer/footer_main.dart';
import 'package:foodie_final/Header/headermain.dart';
import 'package:foodie_final/Items/scroll_item.dart';
import 'package:foodie_final/OurChef/chef_main.dart';
import 'package:foodie_final/WhatTheySay/say_main.dart';
import 'package:foodie_final/WhatWeServe/what_serve_main.dart';
import 'package:foodie_final/size.dart';
import 'package:google_fonts/google_fonts.dart';

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

  bool? home = false;
  bool? service = false;
  bool? menu = false;
  bool? contact = false;

  String homehead = 'first';

  Future scrollToservice() async {
    final context = serviceKey.currentContext!;
    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

  Future scrollTohome() async {
    final context = homeKey.currentContext!;
    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

  Future scrollTomenu() async {
    final context = menuKey.currentContext!;
    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

  Future scrollTocontact() async {
    final context = contactKey.currentContext!;
    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isMediumScreen(context)
          ? PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Container(
                padding: const EdgeInsets.only(left: 100, right: 100, top: 25),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text('Foodie',
                                    style: GoogleFonts.baloo(fontSize: 40))
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                MouseRegion(
                                  onHover: (f) {
                                    setState(() {
                                      homehead = 'first';
                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      scrollTohome();
                                      setState(() {
                                        homehead = 'first';
                                      });
                                    },
                                    child: Text('Home',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: homehead == 'first'
                                                ? Theme.of(context).primaryColor
                                                : Colors.black)),
                                  ),
                                ),
                                const SizedBox(width: 52),
                                MouseRegion(
                                  onHover: (f) {
                                    setState(() {
                                      homehead = 'sec';
                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      scrollToservice();
                                      setState(() {
                                        homehead = 'sec';
                                      });
                                    },
                                    child: Text('Services',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: homehead == 'sec'
                                                ? Theme.of(context).primaryColor
                                                : Colors.black)),
                                  ),
                                ),
                                const SizedBox(width: 52),
                                MouseRegion(
                                  onHover: (f) {
                                    setState(() {
                                      homehead = 'third';
                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      scrollTomenu();
                                      setState(() {
                                        homehead = 'third';
                                      });
                                    },
                                    child: Text('Menu',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: homehead == 'third'
                                                ? Theme.of(context).primaryColor
                                                : Colors.black)),
                                  ),
                                ),
                                const SizedBox(width: 52),
                                MouseRegion(
                                  onHover: (f) {
                                    setState(() {
                                      homehead = 'fourth';
                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      scrollTocontact();
                                      setState(() {
                                        homehead = 'fourth';
                                      });
                                    },
                                    child: Text('Contact',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: homehead == 'fourth'
                                                ? Theme.of(context).primaryColor
                                                : Colors.black)),
                                  ),
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
                                  size: 20,
                                ),
                                const SizedBox(width: 30),
                                const Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 30,
                                ),
                                const SizedBox(width: 30),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 35,
                                        right: 35,
                                        top: 10,
                                        bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(36),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context).primaryColor,
                                          blurRadius: 5,
                                          spreadRadius: 1.0,
                                          offset: const Offset(0.0, 2.0),
                                        )
                                      ],
                                    ),
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
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
            )
          : ResponsiveWidget.isSmallScreen(context)
              ? AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/footerlogo.png',
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text('Foodie',
                          style: GoogleFonts.baloo(
                              fontSize: 30, color: Colors.black))
                    ],
                  ),
                )
              : PreferredSize(
                  preferredSize: Size.fromHeight(150),
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 150, right: 150, top: 52),
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
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Text('Foodie',
                                        style: GoogleFonts.baloo(fontSize: 60))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    MouseRegion(
                                      onHover: (f) {
                                        setState(() {
                                          homehead = 'first';
                                        });
                                      },
                                      child: GestureDetector(
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
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.black)),
                                      ),
                                    ),
                                    const SizedBox(width: 72),
                                    MouseRegion(
                                      onHover: (f) {
                                        setState(() {
                                          homehead = 'sec';
                                        });
                                      },
                                      child: GestureDetector(
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
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.black)),
                                      ),
                                    ),
                                    const SizedBox(width: 72),
                                    MouseRegion(
                                      onHover: (f) {
                                        setState(() {
                                          homehead = 'third';
                                        });
                                      },
                                      child: GestureDetector(
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
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.black)),
                                      ),
                                    ),
                                    const SizedBox(width: 72),
                                    MouseRegion(
                                      onHover: (f) {
                                        setState(() {
                                          homehead = 'fourth';
                                        });
                                      },
                                      child: GestureDetector(
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
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.black)),
                                      ),
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
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 55,
                                            right: 55,
                                            top: 20,
                                            bottom: 20),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              blurRadius: 5,
                                              spreadRadius: 1.0,
                                              offset: const Offset(0.0, 2.0),
                                            )
                                          ],
                                        ),
                                        child: const Text(
                                          'Login',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scrollTohome();
          setState(() {
            homehead = 'first';
          });
        },
        backgroundColor: Colors.red.shade300,
        hoverElevation: 3,
        hoverColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
