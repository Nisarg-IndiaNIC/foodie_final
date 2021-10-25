import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScrollItems extends StatefulWidget {
  const ScrollItems({Key? key}) : super(key: key);

  @override
  _ScrollItemsState createState() => _ScrollItemsState();
}

class _ScrollItemsState extends State<ScrollItems> {
  // @override
  // void initState() {
  //   super.initState();
  //   loadAddr();
  // }

  // loadAddr() async {
  //   final itemJson = await rootBundle.loadString("assets/scroll.json");
  //   final decodeData = jsonDecode(itemJson);
  //   var itemsData = decodeData["item"];
  //   ItemModel.item =
  //       List.from(itemsData).map<Item>((item) => Item.fromMap(item)).toList();
  //   setState(() {});
  // }

  String select = 'first';
  ScrollController scoll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 600,
          width: 500,
          child: RawScrollbar(
            controller: scoll,
            thumbColor: const Color(0xffff5344),
            radius: const Radius.circular(20),
            thickness: 10,
            interactive: true,
            isAlwaysShown: true,
            child: ListView(
              controller: scoll,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 'first';
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(right: 130),
                      decoration: BoxDecoration(
                          color: select == 'first'
                              ? Colors.red
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(61)),
                      child: Row(
                        children: [
                          Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: select == 'first'
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Image.asset('assets/pizza.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Pizza",
                            style: TextStyle(
                                fontSize: 28,
                                color: select == 'first'
                                    ? Colors.white
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 'sec';
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(right: 130),
                      height: 122,
                      width: 383,
                      decoration: BoxDecoration(
                          color:
                              select == 'sec' ? Colors.red : Colors.transparent,
                          borderRadius: BorderRadius.circular(61)),
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(16),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: select == 'sec'
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Image.asset('assets/hamburger.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("Fast Food",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: select == 'sec'
                                      ? Colors.white
                                      : Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 'third';
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(right: 130),
                      height: 122,
                      width: 383,
                      decoration: BoxDecoration(
                          color: select == 'third'
                              ? Colors.red
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(61)),
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(16),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: select == 'third'
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Image.asset('assets/rice.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("Rice Bowl",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: select == 'third'
                                      ? Colors.white
                                      : Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 'fourth';
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(right: 130),
                      height: 122,
                      width: 383,
                      decoration: BoxDecoration(
                          color: select == 'fourth'
                              ? Colors.red
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(61)),
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(16),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: select == 'fourth'
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Image.asset('assets/donut.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("Dessert",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: select == 'fourth'
                                      ? Colors.white
                                      : Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 'five';
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(right: 130),
                      height: 122,
                      width: 383,
                      decoration: BoxDecoration(
                          color: select == 'five'
                              ? Colors.red
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(61)),
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(16),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: select == 'five'
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Image.asset('assets/ice.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("Icecream",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: select == 'five'
                                      ? Colors.white
                                      : Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const LoginScroll()
      ],
    );
  }
}

class LoginScroll extends StatefulWidget {
  const LoginScroll({Key? key}) : super(key: key);

  @override
  _LoginScrollState createState() => _LoginScrollState();
}

class _LoginScrollState extends State<LoginScroll> {
  PageController ctrl = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      height: 630,
      width: 950,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffffe4e2)),
      child: Column(
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 17,
                height: 17,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: currentPage == 0
                        ? const Color(0xffff5344)
                        : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 17,
                height: 17,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: currentPage == 1
                        ? const Color(0xffff5344)
                        : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 17,
                height: 17,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: currentPage == 2
                        ? const Color(0xffff5344)
                        : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          CarouselSlider(
              items: [
                Sliderspage(),
                Sliderspage(),
                Sliderspage()
               
              ],
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                },
              
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
          // Row(
          //   children: [
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Container(
          //           padding: const EdgeInsets.all(10),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(11),
          //               color: Colors.red.shade100),
          //           child: const Text(
          //             'Fastest Food Delivery Service',
          //             style: TextStyle(color: Color(0xffff5344), fontSize: 24),
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         const Text(
          //           'Delivery in just\n30 minutes',
          //           style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
          //         ),
          //         const SizedBox(
          //           height: 24,
          //         ),
          //         const Text(
          //           'Lorem Ipsum has been the industrys\nstandard dummy text ever since the\nwhen unknown printer.',
          //           style: TextStyle(fontSize: 25, height: 1.5),
          //         ),
          //         const SizedBox(
          //           height: 30,
          //         ),
          //         InkWell(
          //           onTap: () {},
          //           child: Container(
          //             padding: const EdgeInsets.only(
          //                 left: 55, right: 55, top: 20, bottom: 20),
          //             decoration: BoxDecoration(
          //               color: const Color(0xffff5344),
          //               borderRadius: BorderRadius.circular(36),
          //               boxShadow: const [
          //                 BoxShadow(
          //                   color: Color(0xffff5344),
          //                   blurRadius: 5,
          //                   spreadRadius: 1.0,
          //                   offset: Offset(0.0, 2.0),
          //                 )
          //               ],
          //             ),
          //             child: const Text(
          //               'Login',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Image.asset(
          //           'assets/bur.png',
          //           height: 480,
          //         )
          //       ],
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}


class Sliderspage extends StatefulWidget {
  const Sliderspage({ Key? key }) : super(key: key);

  @override
  _SliderspageState createState() => _SliderspageState();
}

class _SliderspageState extends State<Sliderspage> {
  @override
  Widget build(BuildContext context) {
    return  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.red.shade100),
                            child: const Text(
                              'Fastest Food Delivery Service',
                              style: TextStyle(
                                  color: Color(0xffff5344), fontSize: 24),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Delivery in just\n30 minutes',
                            style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.w600, height: 1.2),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text(
                            'Lorem Ipsum has been the industrys\nstandard dummy text ever since the\nwhen unknown printer.',
                            style: TextStyle(fontSize: 25, height: 1.5),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 55, right: 55, top: 15, bottom: 20),
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
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/bur.png',
                            height: 480,
                          )
                        ],
                      ),
                    ],
                  );
  }
}