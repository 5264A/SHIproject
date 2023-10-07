import 'dart:core';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {

  CardList({super.key});
  String name='Keshav Shingh';
  String address='Pahalgam Kashmir' ;
  String wooltype='Merino' ;


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
             color: Colors.grey.shade200,

          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: 200,
              height: 100,

              decoration: const BoxDecoration(

                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/woolfarm.jpeg'),
                ),
              ),
            ),
          ),
           Text("Name = ${name}", style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Address = ${address}",  maxLines: 2,
            overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),),
           Text("Wool-Type = ${wooltype}", style: TextStyle(fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}