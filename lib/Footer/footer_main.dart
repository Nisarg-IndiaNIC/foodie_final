import 'package:flutter/material.dart';
import 'package:foodie_final/Footer/foodie_logo_detail.dart';
import 'package:foodie_final/Footer/footer_company.dart';
import 'package:foodie_final/Footer/footer_support.dart';
import 'package:foodie_final/Footer/footertouch.dart';

class FooterMain extends StatefulWidget {
  const FooterMain({Key? key}) : super(key: key);

  @override
  _FooterMainState createState() => _FooterMainState();
}

class _FooterMainState extends State<FooterMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      padding: const EdgeInsets.only(left: 150, right: 150, top: 72),
      color: const Color(0xffffe4e2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: const [
                  FooterDescription(),
                ],
              ),
              Column(
                children: const [
                  FooterCompany(),
                ],
              ),
              Column(
                children: const [
                  FooterSupport(),
                ],
              ),
              Column(
                children: const [
                  FooterTouch(),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Divider(
            color: Color(0xff707070),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child:const Text(
                          'Help',
                          style:
                              TextStyle(color: Color(0xff161616), fontSize: 20),
                        ),
                      ),
                    const  SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {},
                        child:const Text(
                          'Privacy',
                          style:
                              TextStyle(color: Color(0xff161616), fontSize: 20),
                        ),
                      ),
                    const  SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {},
                        child:const Text(
                          'Term',
                          style:
                              TextStyle(color: Color(0xff161616), fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children:const [Text('@ Copyright 2021 Foodies. | All Rights Reserved.',
                          style:
                              TextStyle(color: Color(0xff161616), fontSize: 20),)],
              )
           
            ],
          )
        ],
      ),
    );
  }
}
