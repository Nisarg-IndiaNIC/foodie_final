import 'package:flutter/material.dart';

class FoodChain extends StatefulWidget {
  const FoodChain({ Key? key }) : super(key: key);

  @override
  _FoodChainState createState() => _FoodChainState();
}

class _FoodChainState extends State<FoodChain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 337,
      color:const Color(0xffffe4e2),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: [
        Image.asset('assets/1.png'),
        Image.asset('assets/2.png'),
        Image.asset('assets/3.png'),
        Image.asset('assets/4.png'),
        Image.asset('assets/5.png')
      ],),
    );
  }
}