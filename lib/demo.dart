// // import 'package:flutter/material.dart';
// // import 'package:carousel_slider/carousel_slider.dart';

// // class PageViewDemo extends StatefulWidget {
// //   const PageViewDemo({Key? key}) : super(key: key);

// //   @override
// //   _PageViewDemoState createState() => _PageViewDemoState();
// // }

// // class _PageViewDemoState extends State<PageViewDemo> {
// //   PageController ctrl = PageController();
// //   int currentPage = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           Row(
// //             children: [
// //               AnimatedContainer(
// //                 duration: const Duration(milliseconds: 500),
// //                 width: 17,
// //                 height: 17,
// //                 margin: const EdgeInsets.symmetric(horizontal: 10),
// //                 decoration: BoxDecoration(
// //                     color: currentPage == 0
// //                         ? const Color(0xffff5344)
// //                         : Colors.grey,
// //                     borderRadius: const BorderRadius.all(Radius.circular(12))),
// //               ),
// //               AnimatedContainer(
// //                 duration: const Duration(milliseconds: 500),
// //                 width: 17,
// //                 height: 17,
// //                 margin: const EdgeInsets.symmetric(horizontal: 10),
// //                 decoration: BoxDecoration(
// //                     color: currentPage == 1
// //                         ? const Color(0xffff5344)
// //                         : Colors.grey,
// //                     borderRadius: const BorderRadius.all(Radius.circular(12))),
// //               ),
// //               AnimatedContainer(
// //                 duration: const Duration(milliseconds: 500),
// //                 width: 17,
// //                 height: 17,
// //                 margin: const EdgeInsets.symmetric(horizontal: 10),
// //                 decoration: BoxDecoration(
// //                     color: currentPage == 2
// //                         ? const Color(0xffff5344)
// //                         : Colors.grey,
// //                     borderRadius: const BorderRadius.all(Radius.circular(12))),
// //               ),
// //             ],
// //           ),
// //           const SizedBox(
// //             height: 30,
// //           ),

// //           Container(
           
// //             // child: PageView(

// //             //     controller: ctrl,
// //             //     scrollDirection: Axis.horizontal,
// //             //     pageSnapping: true,
// //             //      onPageChanged: (int i) {
// //             //             setState(() {
// //             //               currentPage = i;
// //             //             });
// //             //           },
// //             //   children: [
// //             //     Container(color: Colors.red, child: Text('Data'),),
// //             //     Container(color: Colors.green, child: Text('Dataaa'),),
// //             //     Container(color: Colors.blue, child: Text('Dataaaa'),),
// //             //   ],
// //             // ),
// //             child: CarouselSlider(
// //                 items: [
// //                   Container(
// //                     height: 300,
// //                     width: 300,
// //                     color: Colors.red,
// //                     child: Text('Data'),
// //                   ),
// //                   Container(
// //                     height: 300,
// //                     width: 300,
// //                     color: Colors.green,
// //                     child: Text('Dataaa'),
// //                   ),
// //                   Container(
// //                     height: 300,
// //                     width: 300,
// //                     color: Colors.blue,
// //                     child: Text('Dataaaa'),
// //                   ),
// //                 ],
// //                 options: CarouselOptions(
// //                   height: 400,
              
// //                   onPageChanged: (index, reason) {
// //                   setState(() {
// //                     currentPage = index;
// //                   });
// //                 },
// //                   aspectRatio: 16 / 9,
// //                   viewportFraction: 0.8,
// //                   initialPage: 0,
// //                   enableInfiniteScroll: true,
// //                   reverse: false,
// //                   autoPlay: true,
// //                   autoPlayInterval: Duration(seconds: 3),
// //                   autoPlayAnimationDuration: Duration(milliseconds: 800),
// //                   autoPlayCurve: Curves.fastOutSlowIn,
// //                   enlargeCenterPage: true,
// //                   scrollDirection: Axis.horizontal,
// //                 )),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';

// class ScrollView extends StatelessWidget {
//   final dataKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       primary: true,
//       appBar: AppBar(
//         title:  Text('Home'),
//       ),
//       body: new SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//           SizedBox(height: 160.0, width: double.infinity, child: new Card()),
//            SizedBox(height: 160.0, width: double.infinity, child: new Card()),
//              SizedBox(height: 160.0, width: double.infinity, child: new Card()),
//             // destination
//            Card(
//               key: dataKey,
//               child: Text("data\n\n\n\n\n\ndata"),
//             )
//           ],
//         ),
//       ),
//       bottomNavigationBar: RaisedButton(
//         onPressed: () => Scrollable.ensureVisible(dataKey.currentContext),
//         child:  Text("Scroll to data"),
//       ),
//     );
//   }
// }