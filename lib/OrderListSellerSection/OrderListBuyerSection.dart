
import 'package:flutter/material.dart';

class OrderListSellerSection extends StatelessWidget {
  static const String path = "lib/src/pages/lists/list1.dart";

  const OrderListSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: const Text("Sellers-List"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 2,
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.filter_list),
          )
        ],
      ),
      body:  Lists(),
    );
  }
}

class Item {
  final String? Name;
  final String? Address;
  final String? Wooltype;
  final String? ratings;
  final String? discount;
  final String? image;

  Item(
      {this.Name,
        this.Address,
        this.Wooltype,
        this.ratings,
        this.discount,
        this.image});
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
        Name: 'Anand Mahindra',
        Address: "Jamshedpur",
        Wooltype: "Red-Wool",
        ratings: "5.0/80",
        discount: "10 %",
        image:
        "https://images.pexels.com/photos/672142/pexels-photo-672142.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Item(
        Name: 'Singapore Zoo',
        Address: "Parks",
        Wooltype: "Singapore",
        ratings: "4.5/90",
        discount: null,
        image:
        "https://images.pexels.com/photos/1736222/pexels-photo-1736222.jpeg?cs=srgb&dl=adult-adventure-backpacker-1736222.jpg&fm=jpg"),
    Item(
        Name: 'National Orchid Garden',
        Address: "Parks",
        Wooltype: "Singapore",
        ratings: "4.5/90",
        discount: "12 %",
        image:
        "https://images.pexels.com/photos/62403/pexels-photo-62403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Item(
        Name: 'Godabari',
        Address: "Parks",
        Wooltype: "Singapore",
        ratings: "4.5/90",
        discount: "15 %",
        image:
        "https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Item(
        Name: 'Rara National Park',
        Address: "Parks",
        Wooltype: "Singapore",
        ratings: "4.5/90",
        discount: "12 %",
        image:
        "https://images.pexels.com/photos/1319515/pexels-photo-1319515.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ];

  Lists({super.key});




  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 110,
                padding:
                const EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(item.image!), fit: BoxFit.cover)),
                child: item.discount == null
                    ? Container()
                    : Container(
                  color: Colors.lightBlue,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        item.discount!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      const Text(
                        "Discount",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.Name!,
                      style: const TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      item.Address!,
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      item.Wooltype!,
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          item.ratings!,
                          style: const TextStyle(fontSize: 13),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Ratings",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),

                    MaterialButton(onPressed: (){

                    },child: Text('Buy'),
                    color: Colors.blue,),


                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}