import 'package:flutter/material.dart';

class FooterCompany extends StatefulWidget {
  const FooterCompany({Key? key}) : super(key: key);

  @override
  _FooterCompanyState createState() => _FooterCompanyState();
}

class _FooterCompanyState extends State<FooterCompany> {
   bool isHome = false; 
  bool isAbout  = false;
  bool isBlog = false;
  bool isContact =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Company',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 50,
        ),
       InkWell(
          onTap: () {},
          child: MouseRegion(
            onEnter: (f){
              setState(() {
                isHome = true;
              });
            },
            onExit: (f){
              setState(() {
                isHome = false;
              });
            },
            child: Text('Home',
                style: TextStyle(
                  fontSize: 30,color: isHome ?const Color(0xffff5344) : Colors.black
                )),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        InkWell(
          onTap: () {},
          child: MouseRegion(
            onEnter: (f){
              setState(() {
                isAbout = true;
              });
            },
            onExit: (f){
              setState(() {
                isAbout = false;
              });
            },
            child: Text('Feedback',
                style: TextStyle(
                  fontSize: 30,color: isAbout ?const Color(0xffff5344) : Colors.black
                )),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        InkWell(
          onTap: () {},
          child: MouseRegion(
            onEnter: (f){
              setState(() {
                isBlog = true;
              });
            },
            onExit: (f){
              setState(() {
                isBlog = false;
              });
            },
            child: Text('Blog',
                style: TextStyle(
                  fontSize: 30,color: isBlog ?const Color(0xffff5344) : Colors.black
                )),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        InkWell(
          onTap: () {},
          child: MouseRegion(
            onEnter: (f){
              setState(() {
                isContact = true;
              });
            },
            onExit: (f){
              setState(() {
                isContact = false;
              });
            },
            child: Text('Contact',
                style: TextStyle(
                  fontSize: 30,color: isContact ?const Color(0xffff5344) : Colors.black
                )),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
      ],
    );
  }
}
