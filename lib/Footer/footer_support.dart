import 'package:flutter/material.dart';

class FooterSupport extends StatefulWidget {
  const FooterSupport({ Key? key }) : super(key: key);

  @override
  _FooterSupportState createState() => _FooterSupportState();
}

class _FooterSupportState extends State<FooterSupport> {
  bool isHover = false; 
  bool isFeed  = false;
  bool isCont = false;
  bool isacc =false;
  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Support',
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
                isHover = true;
              });
            },
            onExit: (f){
              setState(() {
                isHover = false;
              });
            },
            child: Text('Account',
                style: TextStyle(
                  fontSize: 30,color: isHover ?const Color(0xffff5344) : Colors.black
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
                isFeed = true;
              });
            },
            onExit: (f){
              setState(() {
                isFeed = false;
              });
            },
            child: Text('Feedback',
                style: TextStyle(
                  fontSize: 30,color: isFeed ?const Color(0xffff5344) : Colors.black
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
                isCont = true;
              });
            },
            onExit: (f){
              setState(() {
                isCont = false;
              });
            },
            child: Text('Contact Us',
                style: TextStyle(
                  fontSize: 30,color: isCont ?const Color(0xffff5344) : Colors.black
                )),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
         InkWell(
          onTap: () {},
          child: MouseRegion(
            onEnter: (c){
              setState(() {
                isacc = true;
              });
            },
            onExit: (c){
              setState(() {
                isacc = false;
              });
            },
            child: Text('Accesbility',
                style: TextStyle(
                  fontSize: 30,color: isacc ?const Color(0xffff5344) : Colors.black
                )),
          ),
        ),
       
      ],
    );
  }
}