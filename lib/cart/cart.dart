import 'dart:ui';

import 'package:flutter/material.dart';

class CartOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/cart1.dart";
  final List<Map> items = [
    {"image": AssetImage('woolfarm2.jpg'), "title": "Red- Wool", "price": 20},
    {"image":AssetImage('woolfarm2.jpg'), "title": "Wool-Type2", "price": 30},
  ];

  CartOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
                child: Text(
                  "CART",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                )),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(right: 30.0, bottom: 10.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 3.0,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[

                              Container(

                                child: Image(

                                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqw2Z9gTRWSZyUaE9U2wblXPunvdDW2VFZ6F2BvT_DdQ&s'),
                                ),
                              ),


                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        items[index]["title"],
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                       Text(
                                        "\$${items[index]['price']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 15,
                        child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(0.0),
                            color: Colors.blue,
                            child: const Icon(
                              Icons.clear,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Subtotal      \$50",
                    style:
                    TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Delivery       \$05",
                    style:
                    TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Cart Subtotal     \$55",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      height: 50.0,
                      color: Colors.blue,
                      child: Text(
                        "Secure Checkout".toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}