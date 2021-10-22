import 'package:flutter/material.dart';

enum CustomerSay { left, right }

class SayMain extends StatefulWidget {
  const SayMain({Key? key}) : super(key: key);

  @override
  _SayMainState createState() => _SayMainState();
}

class _SayMainState extends State<SayMain> {
  String select = 'left';
  CustomerSay selectedWidgetMarker = CustomerSay.left;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const Text(
            'What They Say',
            style: TextStyle(color: Color(0xffFF5344), fontSize: 24),
          ),
         const SizedBox(
            height: 15,
          ),
         const Text(
            'What Our Customer\nSay About Us',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
         const SizedBox(
            height: 65,
          ),
          Image.asset('assets/sayimage.png'),
          getProduct(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMarker = CustomerSay.left;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 46,
                    color: (selectedWidgetMarker == CustomerSay.left)
                        ? const Color(0xffff5344)
                        : const Color(0xff9a9a9a),
                  )),
              const SizedBox(
                width: 35,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMarker = CustomerSay.right;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 46,
                    color: (selectedWidgetMarker == CustomerSay.right)
                        ? const Color(0xffff5344)
                        : const Color(0xff9a9a9a),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget getProduct() {
    switch (selectedWidgetMarker) {
      case CustomerSay.left:
        return leftCustomer();
      case CustomerSay.right:
        return rightCustomer();
    }
  }

  Widget leftCustomer() {
    return const LeftSay();
  }

  Widget rightCustomer() {
    return const RightSay();
  }
}

class RightSay extends StatelessWidget {
  const RightSay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
      SizedBox(height: 46,),
       Text(
          'Emily Jasmine',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 7,
        ),
      Text('Food Enthusiast',
            style: TextStyle(fontSize: 24, color: Color(0xff323030))),
            SizedBox(height: 10,),
       SizedBox(
          width: 160,
            child: Divider(
          color: Color(0xffff5344),
        )),
        SizedBox(height: 26,),
        Text('Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and scrambled it to make a type\nspecimen book. It has survived not only five centuries.',style: TextStyle(fontSize: 25, height: 2),textAlign: TextAlign.center,),
        SizedBox(height: 46,)
      ],
    );
  }
}

class LeftSay extends StatefulWidget {
  const LeftSay({ Key? key }) : super(key: key);

  @override
  _LeftSayState createState() => _LeftSayState();
}

class _LeftSayState extends State<LeftSay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
      SizedBox(height: 46,),
       Text(
          'Nisarg Parikh',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 7,
        ),
      Text('Food Blogger',
            style: TextStyle(fontSize: 24, color: Color(0xff323030))),
            SizedBox(height: 10,),
       SizedBox(
          width: 160,
            child: Divider(
          color: Color(0xffff5344),
        )),
        SizedBox(height: 26,),
        Text('Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and scrambled it to make a type\nspecimen book. It has survived not only five centuries.',style: TextStyle(fontSize: 25, height: 2),textAlign: TextAlign.center,),
        SizedBox(height: 46,)
      ],
    );
  }
}
