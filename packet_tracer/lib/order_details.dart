import 'package:flutter/material.dart';
import 'package:packet_tracer/order.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails(this.order);
  final Order order;

  @override _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ORDER DETAILS"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}