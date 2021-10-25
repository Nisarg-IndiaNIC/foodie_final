import 'package:flutter/material.dart';
import 'package:foodie_final/Header/header_deatails.dart';


class HeaderUpper extends StatefulWidget {
  const HeaderUpper({Key? key}) : super(key: key);

  @override
  _HeaderUpperState createState() => _HeaderUpperState();
}

class _HeaderUpperState extends State<HeaderUpper> {
  String homehead = 'first';
  @override
  Widget build(BuildContext context) {
    return Container(
       padding:const EdgeInsets.only(left: 150,right: 150),
      child: Column(
        children:const [
        
         SizedBox(height: 42,),
         HeaderDetails()
        ],
      ),
    );
  }
}
