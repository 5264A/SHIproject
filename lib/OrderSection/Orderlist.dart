import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/cart2.dart";

  const OrderList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Orders'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, int index) {
                  return cartItems(index);
                },
              ),
            ),

          ],
        ));
  }

  Widget cartItems(int index) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(10),
      height: 150,
      child: Row(
        children: <Widget>[
          Container(
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqw2Z9gTRWSZyUaE9U2wblXPunvdDW2VFZ6F2BvT_DdQ&s'),   fit: BoxFit.cover,
                )),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Item 1$index",
                          overflow: TextOverflow.fade,
                          softWrap: true,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: IconButton(
                          onPressed: () {
                            print("Button Pressed");
                          },
                          color: Colors.red,
                          icon: const Icon(Icons.details_outlined),
                          iconSize: 20,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Text("Price: "),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '\$200',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Text("Total Items: "),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.orange,
                          ))
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Text("Address: "),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Yarn Wool Shop Karol',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Text("City: "),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Delhi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }


}