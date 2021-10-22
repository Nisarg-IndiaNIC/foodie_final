import 'package:flutter/material.dart';

class FooterTouch extends StatefulWidget {
  const FooterTouch({Key? key}) : super(key: key);

  @override
  _FooterTouchState createState() => _FooterTouchState();
}

class _FooterTouchState extends State<FooterTouch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Get in Touch',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 50,
        ),
        Text('Question or Feedback?\nWe d love to hear from you',
            style: TextStyle(
              fontSize: 30,
            )),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
