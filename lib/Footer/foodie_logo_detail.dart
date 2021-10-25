import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterDescription extends StatefulWidget {
  const FooterDescription({Key? key}) : super(key: key);

  @override
  _FooterDescriptionState createState() => _FooterDescriptionState();
}

class _FooterDescriptionState extends State<FooterDescription> {
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
              style: GoogleFonts.baloo(fontSize: MediaQuery.of(context).size.height * 0.06)
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
                    isHover = true;
                  });
                },
                onExit: (f) {
                  setState(() {
                    isHover = false;
                  });
                },
                child: Image.asset(
                  'assets/instagram.png',
                  color: isHover == true ? Theme.of(context).primaryColor : Colors.black,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {},
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    isFeed = true;
                  });
                },
                onExit: (f) {
                  setState(() {
                    isFeed = false;
                  });
                },
                child: Image.asset(
                  'assets/snapchat.png',
                  color:
                      isFeed == true ? Theme.of(context).primaryColor : Colors.black,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {},
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    isCont = true;
                  });
                },
                onExit: (f) {
                  setState(() {
                    isCont = false;
                  });
                },
                child: Image.asset(
                  'assets/google-plus.png',
                  color:
                      isCont == true ? Theme.of(context).primaryColor : Colors.black,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {},
              child: MouseRegion(
                onEnter: (f) {
                  setState(() {
                    isacc = true;
                  });
                },
                onExit: (f) {
                  setState(() {
                    isacc = false;
                  });
                },
                child: Image.asset(
                  'assets/twitter.png',
                  color: isacc == true ? Theme.of(context).primaryColor : Colors.black,
                  height: 30,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
