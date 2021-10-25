import 'package:flutter/material.dart';

class OurChefPic extends StatefulWidget {
  const OurChefPic({Key? key}) : super(key: key);

  @override
  _OurChefPicState createState() => _OurChefPicState();
}

class _OurChefPicState extends State<OurChefPic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 150, right: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset('assets/mainchef.png'),
                  Positioned(
                      left: 390,
                      top: 101,
                      child: Container(
                        height: 202,
                        width: 344,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                  offset: Offset(0, 5))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Our Foodies',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 38),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    'assets/ourchef1.png',
                                  ),
                                  Positioned(
                                      left: 62,
                                      child:
                                          Image.asset('assets/ourchef2.png')),
                                  Positioned(
                                      left: 62 + 62,
                                      child:
                                          Image.asset('assets/ourchef3.png')),
                                  Positioned(
                                    left: 124 + 62,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 84,
                                      width: 84,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(84),
                                          border: Border.all(
                                              width: 4, color: Colors.white),
                                          color:Theme.of(context).primaryColor),
                                      child: const Text(
                                        '10k+',
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              const OurChefText()
            ],
          ),
        ],
      ),
    );
  }
}

class OurChefText extends StatefulWidget {
  const OurChefText({Key? key}) : super(key: key);

  @override
  _OurChefTextState createState() => _OurChefTextState();
}

class _OurChefTextState extends State<OurChefText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Why Choose us',
          style: TextStyle(color:Theme.of(context).primaryColor, fontSize: 24),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Every Flavor\nWelcome',
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Lorem Ipsum has been the industrys standard\ndummy text ever since the 1500s, when unknown\nprinter took a galley of type.',
          style: TextStyle(fontSize: 25, height: 1.5),
        ),
        const SizedBox(
          height: 45,
        ),
        Container(
          height: 188,
          width: 650,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffffe4e2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/cheftext.png')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'All in one app.',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  Text(
                      'Lorem Ipsum has been the industry\nstandard dummy text.',
                      style: TextStyle(fontSize: 25))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
