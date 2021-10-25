import 'package:flutter/material.dart';
import 'package:foodie_final/Header/our_foodies.dart';

class HeaderDetails extends StatefulWidget {
  const HeaderDetails({Key? key}) : super(key: key);

  @override
  _HeaderDetailsState createState() => _HeaderDetailsState();
}

class _HeaderDetailsState extends State<HeaderDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                child: Text(
                  'Super Fast Delivery',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
            const SizedBox(
              height: 45,
            ),
            RichText(
              text: TextSpan(
                style:const TextStyle(
                    color: Colors.black,
                    fontSize: 85,
                    fontWeight: FontWeight.w600),
                children: [
                 const TextSpan(text: 'Deliver '),
                  TextSpan(
                      text: 'your\n',
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                 const TextSpan(text: 'Food within\n'),
                  TextSpan(
                      text: '80 ', style: TextStyle(color: Theme.of(context).primaryColor)),
                 const TextSpan(text: 'min'),
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 55, right: 55, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(36),
                      boxShadow:[
                        BoxShadow(
                          color: Theme.of(context).primaryColor,
                          blurRadius: 5,
                          spreadRadius: 1.0,
                          offset:const Offset(0.0, 2.0),
                        )
                      ],
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Image.asset('assets/video.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text('Watch Video', style: TextStyle(fontSize: 30)),
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
  const PiC({Key? key}) : super(key: key);

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
         const Positioned(
              top: 750, left: 420, child: OurFoodies()),
          Positioned(
              top: 380,
              right: 650,
              child: Container(
                height: 97,
                width: 319,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(49),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 10,
                          spreadRadius: 1.0,
                          offset: Offset(0, 5))
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color:Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(55)),
                        child:const Icon(
                          Icons.check,
                          size: 24,
                          color: Colors.white,
                        ),
                        alignment: Alignment.center),
                       const Text('Delivery Complete', style: TextStyle(fontSize: 20),)
                  ],
                ),
              )),
          Positioned(left: 650, child: Image.asset('assets/friees.png')),
          Positioned(right: 650, child: Image.asset('assets/juice.png')),
        ],
      ),
    );
  }
}
