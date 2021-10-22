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
                    child: Image.asset('assets/allnchef.png'),
                  )
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
        const Text(
          'Why Choose us',
          style: TextStyle(color: Color(0xffff5344), fontSize: 24),
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
