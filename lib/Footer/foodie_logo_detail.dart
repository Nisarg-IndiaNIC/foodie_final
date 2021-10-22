import 'package:flutter/material.dart';

class FooterDescription extends StatefulWidget {
  const FooterDescription({Key? key}) : super(key: key);

  @override
  _FooterDescriptionState createState() => _FooterDescriptionState();
}

class _FooterDescriptionState extends State<FooterDescription> {
  String select = 'first';
  bool isHover = false;
  bool isFeed = false;
  bool isCont = false;
  bool isacc = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                fontSize: MediaQuery.of(context).size.height * 0.06,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Lorem Ipsum has been the industry\nstandard dummy text ever since the\n1500s, when an unknown printer.',
          style: TextStyle(fontSize: 25, height: 1.8),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    select = 'first';
                  });
                },
                onExit: (f) {
                  setState(() {
                    select = 'first';
                  });
                },
                child: Image.asset(
                  'assets/instagram.png',
                  color: select == 'first'
                      ? const Color(0xffFF5344)
                      : Colors.black,
                  height: 30,
                ),
              ),

              // child: Container(
              //   alignment: Alignment.center,
              //   child: Text(
              //     '?',
              //     style: TextStyle(
              //         fontSize: 23,
              //         color: select == 'first'
              //             ? const Color(0xffFF5344)
              //             : const Color(0xffcccccc)),
              //   ),
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //           color: select == 'first'
              //               ? const Color(0xffFF5344)
              //               : const Color(0xffcccccc),
              //           width: 3),
              //       borderRadius: BorderRadius.circular(5)),
              //   height: 30,
              //   width: 30,
              // ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {},
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    select = 'sec';
                  });
                },
                onExit: (f) {
                  setState(() {
                    select = 'sec';
                  });
                },
                child: Image.asset(
                  'assets/snapchat.png',
                  color:
                      select == 'sec' ? const Color(0xffFF5344) : Colors.black,
                  height: 30,
                ),
              ),

              // child: Container(
              //   alignment: Alignment.center,
              //   child: Text(
              //     '?',
              //     style: TextStyle(
              //         fontSize: 23,
              //         color: select == 'sec'
              //             ? const Color(0xffFF5344)
              //             : const Color(0xffcccccc)),
              //   ),
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //           color: select == 'sec'
              //               ? const Color(0xffFF5344)
              //               : const Color(0xffcccccc),
              //           width: 3),
              //       borderRadius: BorderRadius.circular(5)),
              //   height: 30,
              //   width: 30,
              // ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  select = 'third';
                });
              },
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    select = 'third';
                  });
                },
                onExit: (f) {
                  setState(() {
                    select = 'third';
                  });
                },
                child: Image.asset(
                  'assets/google-plus.png',
                  color: select == 'third'
                      ? const Color(0xffFF5344)
                      : Colors.black,
                  height: 30,
                ),
              ),

              // child: Container(
              //   alignment: Alignment.center,
              //   child: Text(
              //     '?',
              //     style: TextStyle(
              //         fontSize: 23,
              //         color: select == 'third'
              //             ? const Color(0xffFF5344)
              //             : const Color(0xffcccccc)),
              //   ),
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //           color: select == 'third'
              //               ? const Color(0xffFF5344)
              //               : const Color(0xffcccccc),
              //           width: 3),
              //       borderRadius: BorderRadius.circular(5)),
              //   height: 30,
              //   width: 30,
              // ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  select = 'fourth';
                });
              },
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    select = 'fourth';
                  });
                },
                onExit: (f) {
                  setState(() {
                    select = 'fourth';
                  });
                },
                child: Image.asset(
                  'assets/twitter.png',
                  color: select == 'fourth'
                      ? const Color(0xffFF5344)
                      : Colors.black,
                  height: 30,
                ),
              ),

              // child: Container(
              //   alignment: Alignment.center,
              //   child: Text(
              //     '?',
              //     style: TextStyle(
              //         fontSize: 23,
              //         color: select == 'fourth'
              //             ? const Color(0xffFF5344)
              //             : const Color(0xffcccccc)),
              //   ),
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //           color: select == 'fourth'
              //               ? const Color(0xffFF5344)
              //               : const Color(0xffcccccc),
              //           width: 3),
              //       borderRadius: BorderRadius.circular(5)),
              //   height: 30,
              //   width: 30
              // ),
            )
          ],
        )
      ],
    );
  }
}
