
import 'package:flutter/material.dart';

class WhatWeServe extends StatefulWidget {
  const WhatWeServe({Key? key}) : super(key: key);

  @override
  _WhatWeServeState createState() => _WhatWeServeState();
}

class _WhatWeServeState extends State<WhatWeServe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const  Text(
          'What We Serve',
          style: TextStyle(fontSize: 24, color: Color(0xffff5344)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Your Favourite Food\nDelivery Partner',
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 99,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/whatwe.png', height: 400,),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Easy to Order',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Lorem Ipsum is simply dummy\ntext of the printing.',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/whatwe2.png', height: 400,),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Fastest Delivery',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Lorem Ipsum is simply dummy\ntext of the printing.',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/whatwe3.png',height: 400,),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Secure Payment',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Lorem Ipsum is simply dummy\ntext of the printing.',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
