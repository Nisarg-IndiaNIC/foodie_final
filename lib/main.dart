import 'package:flutter/material.dart';
import 'package:foodie_final/home.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
       textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
       ),
        primarySwatch: Colors.blue,
      ),
      home: const MainPage()
    );
  }
}
