import 'package:flutter/material.dart';
import 'package:foodie_final/FoodChain/food_since.dart';
import 'package:foodie_final/Footer/footer_main.dart';
import 'package:foodie_final/Header/headermain.dart';
import 'package:foodie_final/Items/scroll_item.dart';
import 'package:foodie_final/OurChef/chef_main.dart';
import 'package:foodie_final/WhatTheySay/say_main.dart';
import 'package:foodie_final/WhatWeServe/what_serve_main.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      
      body: SingleChildScrollView(
        physics:const ClampingScrollPhysics(),
        child: Column(
          children:const [
            HeaderMain(),
            SizedBox(height:150),
            WhatWeServe(),
            SizedBox(height:150),
            OurChefPic(),
            SizedBox(height:150),
            ScrollItems(),
            SizedBox(height:150),
            FoodChain(),
            SizedBox(height:150),
            SayMain(),
            SizedBox(
              height: 100,
            ),
            FooterMain()
          ],
        ),
      ),
    );
  }
}