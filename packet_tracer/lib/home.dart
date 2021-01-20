import 'package:flutter/material.dart';
import 'package:packet_tracer/order.dart';
import 'package:packet_tracer/widgets.dart';

class Home extends StatefulWidget {
  @override _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Order> orders = [
    Order(id: 1, address: "C Barcelona 1", destinatary: "Sr Pepe", distance: .75),
    Order(id: 2, address: "C Valencia 2", destinatary: "Sr Pepito", distance: .75),
    Order(id: 3, address: "C Madrid 3", destinatary: "Sra Pepa", distance: .75),
    Order(id: 4, address: "Av Malaga 4", destinatary: "Don Pepe", distance: .75),
    Order(id: 5, address: "Pl Cádiz 5", destinatary: "Sr Pe", distance: .75),
  ];
  
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PACKET TRACER"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) => OrderCard(orders[index]),
      ),
    );
  }
}