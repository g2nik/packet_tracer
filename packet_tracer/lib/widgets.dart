import 'package:flutter/material.dart';
import 'package:packet_tracer/order.dart';
import 'package:packet_tracer/order_details.dart';

class OrderCard extends StatelessWidget {
  OrderCard(this.order);
  final Order order;
  
  @override Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        color: Colors.tealAccent,
        child: ListTile(
          title: Text(order.address),
          trailing: Text(order.distance.toString()),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderDetails(order)));
          },
        ),
      ),
    );
  }
}