import 'package:flutter/material.dart';
import 'package:foodie_final/Header/header_upper.dart';


class HeaderMain extends StatefulWidget {
  const HeaderMain({Key? key}) : super(key: key);

  @override
  _HeaderMainState createState() => _HeaderMainState();
}

class _HeaderMainState extends State<HeaderMain> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Opacity(
        opacity: 0.27,
        child: Container(
         
          decoration:BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor,
                Colors.white,
              ],
            ),
          ),
        ),
      ),
      const HeaderUpper(),
    ]);
  }
}
