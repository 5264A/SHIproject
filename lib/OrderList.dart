import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order List'),
        leading: BackButton(),
      ),
      body: Center(
        child: Text('Not Order Anything Now!',style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
