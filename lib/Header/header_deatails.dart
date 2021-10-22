import 'package:flutter/material.dart';

class HeaderDetails extends StatefulWidget {
  const HeaderDetails({Key? key}) : super(key: key);

  @override
  _HeaderDetailsState createState() => _HeaderDetailsState();
}

class _HeaderDetailsState extends State<HeaderDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red.shade100,
                ),
                child: const Text(
                  'Super Fast Delivery',
                  style: TextStyle(color: Color(0xffff5344)),
                )),
            const SizedBox(
              height: 45,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 85, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(text: 'Deliver '),
                  TextSpan(
                      text: 'your\n',
                      style: TextStyle(color: Color(0xffff5344))),
                  TextSpan(text: 'Food within\n'),
                  TextSpan(
                      text: '80 ', style: TextStyle(color: Color(0xffff5344))),
                  TextSpan(text: 'min'),
                ],
              ),
            ),
            const Text(
                'Lorem Ipsum is simply dummy text of\nthe printing and  industry.',
                style: TextStyle(fontSize: 30)),
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){},
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
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              const  SizedBox(width: 50,),
                Image.asset('assets/video.png'),
             const   SizedBox(width: 10,),
                const Text(
                'Watch Video',
                style: TextStyle(fontSize: 30)),
              ],
            ),
          ],
        ),
        PiC()
      ],
    );
  }
}

class PiC extends StatefulWidget {
  const PiC({ Key? key }) : super(key: key);

  @override
  _PiCState createState() => _PiCState();
}

class _PiCState extends State<PiC> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset('assets/girl.png'),
          Positioned(
            top: 750,
            left: 420,
            child: Image.asset('assets/allnchef.png')),
            Positioned(
            top: 380,
            right:650,
            child: Image.asset('assets/delcom.png')),
            Positioned(
           
            left:650,
            child: Image.asset('assets/friees.png')),
            Positioned(
            
            right:650,
            child: Image.asset('assets/juice.png')),
        ],
      ),
    );
  }
}

