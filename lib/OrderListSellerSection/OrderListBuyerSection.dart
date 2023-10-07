
import 'package:flutter/cupertino.dart';
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
        backgroundColor: CupertinoColors.white,
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
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdnNyFKJn7jg4hgLfbUuFNa2A5SazzGSUBFgbRKvKRmSihhUsq1I4K1vRh2Mb1JyqpUuo&usqp=CAU"),
    Item(
        Name: 'Sham Suman',
        Address: "Kachori Bazaar",
        Wooltype: "Assam",
        ratings: "4.5/90",
        discount: null,
        image:
        "https://assets.isu.pub/document-structure/230622223422-1a3dfdedf6f41e7c7115887d8afe9f54/v1/86cb7548ed2144df3839fcf78691e38b.jpeg"),
    Item(
        Name: 'Mohit kumar',
        Address: "Karol Bagh",
        Wooltype: "Delhi",
        ratings: "4.5/90",
        discount: "12 %",
        image:
        "https://c02.purpledshub.com/uploads/sites/47/2022/11/PHOTO-2021-11-08-11-11-52-3WillYoungcmyk-9183f6e.jpg"),
    Item(
        Name: 'Ayush Shingh',
        Address: "NIT Ghat",
        Wooltype: "Patna",
        ratings: "4.5/90",
        discount: "15 %",
        image:
        "https://assets.isu.pub/document-structure/230622223422-1a3dfdedf6f41e7c7115887d8afe9f54/v1/86cb7548ed2144df3839fcf78691e38b.jpeg"),
    Item(
        Name: 'Mihir Dixit',
        Address: "Jarshuguda",
        Wooltype: "Main Road",
        ratings: "4.5/90",
        discount: "12 %",
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdnNyFKJn7jg4hgLfbUuFNa2A5SazzGSUBFgbRKvKRmSihhUsq1I4K1vRh2Mb1JyqpUuo&usqp=CAU"),
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
       //   color: CupertinoColors.white,
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 110,
               // color: CupertinoColors.white,
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
                          color: Colors.blue,
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
                          color: Colors.lightBlue,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightBlue,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightBlue,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightBlue,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.lightBlue,
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
