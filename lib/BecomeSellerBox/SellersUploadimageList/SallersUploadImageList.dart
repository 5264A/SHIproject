


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellersUploadcardview extends StatelessWidget {
  const SellersUploadcardview({super.key});

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
            blurRadius: 3,
          )
        ],
      ),
      child: Column(
        children: [


           Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=843&q=80',
                  ),
                ),
              ),

          ),



        ],
      ),
    );
  }
}