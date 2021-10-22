import 'package:flutter/material.dart';
import 'package:foodie_final/model/item_model.dart';


class ItemWidget extends StatefulWidget {
  const ItemWidget({ Key? key, required this.newitem}) : super(key: key);
final Item newitem;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
String select = 'first';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      child: Row(
       children: [
         Container(
           height: 90,
           width: 90,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(90), color: select == 'first' ? Colors.white : Colors.white),
           child: Image.asset(widget.newitem.img)),
         Text(widget.newitem.itemname, )
       ],
        ),
    );
  }
}