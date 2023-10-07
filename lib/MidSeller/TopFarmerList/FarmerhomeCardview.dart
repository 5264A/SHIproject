import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmerCardList extends StatelessWidget {
   FarmerCardList({super.key});
  String name='Madhav Babu';
  String address='Silchar,Assam' ;
  String wooltype='Merino' ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(3, 4),
            blurRadius: 4,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: 180,
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
          Text("Address = ${address}", style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Wool-Type = ${wooltype}", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}