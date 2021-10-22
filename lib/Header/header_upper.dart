import 'package:flutter/material.dart';
import 'package:foodie_final/Footer/footer_main.dart';
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
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Column(
          //       children: [
          //         Row(
          //           children: [
          //             Image.asset(
          //               'assets/footerlogo.png',
          //               height: MediaQuery.of(context).size.height * 0.07,
          //             ),
          //             const SizedBox(
          //               width: 14,
          //             ),
          //             Text(
          //               'Foodie',
          //               style: TextStyle(
          //                 fontSize: MediaQuery.of(context).size.height * 0.06,
          //               ),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Row(
          //           children: [
          //             InkWell(
          //               onTap: () {
                          
          //                 setState(() {
          //                   homehead = 'first';
          //                 });
          //               },
          //               child: Text('Home',
          //                   style: TextStyle(
          //                       fontSize: 20,
          //                       color: homehead == 'first'
          //                           ? const Color(0xffff5344)
          //                           : Colors.black)),
          //             ),
          //             const SizedBox(width: 72),
          //             InkWell(
          //               onTap: () {
          //                 setState(() {
                            
          //                   homehead = 'sec';
          //                 });
          //               },
          //               child: Text('Services',
          //                   style: TextStyle(
          //                       fontSize: 20,
          //                       color: homehead == 'sec'
          //                           ? const Color(0xffff5344)
          //                           : Colors.black)),
          //             ),
          //             const SizedBox(width: 72),
          //             InkWell(
          //               onTap: () {
          //                 setState(() {
          //                   homehead = 'third';
          //                 });
          //               },
          //               child: Text('Menu',
          //                   style: TextStyle(
          //                       fontSize: 20,
          //                       color: homehead == 'third'
          //                           ? const Color(0xffff5344)
          //                           : Colors.black)),
          //             ),
          //             const SizedBox(width: 72),
          //             InkWell(
          //               onTap: () {
          //                 setState(() {
          //                   homehead = 'fourth';
          //                 });
          //               },
          //               child: Text('Contact',
          //                   style: TextStyle(
          //                       fontSize: 20,
          //                       color: homehead == 'fourth'
          //                           ? const Color(0xffff5344)
          //                           : Colors.black)),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Row(
          //           children: [
          //             const Icon(
          //               Icons.search,
          //               size: 30,
          //             ),
          //             const SizedBox(width: 40),
          //             const Icon(
          //               Icons.shopping_bag_outlined,
          //               size: 30,
          //             ),
          //             const SizedBox(width: 40),
          //             InkWell(
          //               onTap: (){},
          //               child: Container(
          //                 padding: const EdgeInsets.only(
          //                     left: 55, right: 55, top: 20, bottom: 20),
          //                 decoration: BoxDecoration(
          //                   color: const Color(0xffff5344),
          //                   borderRadius: BorderRadius.circular(36),
          //                   boxShadow: const [
          //                     BoxShadow(
          //                       color: Color(0xffff5344),
          //                       blurRadius: 5,
          //                       spreadRadius: 1.0,
          //                       offset: Offset(0.0, 2.0),
          //                     )
          //                   ],
          //                 ),
          //                 child:const Text(
          //                   'Login',
          //                   style: TextStyle(color: Colors.white, fontSize: 24),
          //                 ),
          //               ),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ],
          // ),
         const SizedBox(height: 42,),
         const HeaderDetails()
        ],
      ),
    );
  }
}
