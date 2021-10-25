import 'package:flutter/material.dart';

class OurFoodies extends StatefulWidget {
  const OurFoodies({Key? key}) : super(key: key);

  @override
  _OurFoodiesState createState() => _OurFoodiesState();
}

class _OurFoodiesState extends State<OurFoodies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: 407,
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
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
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
                Positioned(left: 62, child: Image.asset('assets/ourchef2.png')),
                Positioned(
                    left: 62 + 62, child: Image.asset('assets/ourchef3.png')),
                Positioned(
                    left: 124 + 62, child: Image.asset('assets/ourchef4.png')),
                Positioned(
                  left: 124 + 62 + 62,
                  child: Container(
                    alignment: Alignment.center,
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(84),
                        border: Border.all(width: 4, color: Colors.white),
                        color: Theme.of(context).primaryColor),
                    child: const Text(
                      '10k+',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
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
