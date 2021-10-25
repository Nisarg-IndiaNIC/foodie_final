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
          Text(
            'What They Say',
            style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 24),
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
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWidgetMarker = CustomerSay.left;
                    });
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 46,
                    color: (selectedWidgetMarker == CustomerSay.left)
                        ? Theme.of(context).primaryColor
                        : const Color(0xff9a9a9a),
                  )),
              const SizedBox(
                width: 35,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWidgetMarker = CustomerSay.right;
                    });
                  },
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    size: 46,
                    color: (selectedWidgetMarker == CustomerSay.right)
                        ? Theme.of(context).primaryColor
                        : const Color(0xff9a9a9a),
                  )),
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
      children: [
      const  SizedBox(
          height: 46,
        ),
      const  Text(
          'Emily Jasmine',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
        ),
      const  SizedBox(
          height: 7,
        ),
       const Text('Food Enthusiast',
            style: TextStyle(fontSize: 24, color: Color(0xff323030))),
      const  SizedBox(
          height: 10,
        ),
      const  SizedBox(
            width: 160,
            child: Divider(
              color: Color(0xffff5344),
            )),
       const SizedBox(
          height: 26,
        ),
       Container(
         height: 150,
         child: const Text(
            'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\nspecimen book. It has survived not only five centuries.',
            maxLines: 3,
            style: TextStyle(fontSize: 25, height: 2),
            textAlign: TextAlign.center,
          ),
       ),
       const SizedBox(
          height: 46,
        )
      ],
    );
  }
}

class LeftSay extends StatefulWidget {
  const LeftSay({Key? key}) : super(key: key);

  @override
  _LeftSayState createState() => _LeftSayState();
}

class _LeftSayState extends State<LeftSay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 46,
        ),
        const Text(
          'Nisarg Parikh',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 7,
        ),
        const Text('Food Blogger',
            style: TextStyle(fontSize: 24, color: Color(0xff323030))),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
            width: 160,
            child: Divider(
              color: Color(0xffff5344),
            )),
        const SizedBox(
          height: 26,
        ),
        Container(
          height: 150,
          child: const Text(
            'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and scrambled it to make a type\nspecimen book. It has survived not only five centuries.',
            maxLines: 3,
            style: TextStyle(fontSize: 25, height: 2),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 46,
        )
      ],
    );
  }
}
