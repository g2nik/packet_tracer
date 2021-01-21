import 'package:flutter/material.dart';
import 'package:packet_tracer/access.dart';
import 'package:packet_tracer/home.dart';
import 'package:packet_tracer/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => Splash(),
        "/access": (BuildContext context) => Access(),
        "/home": (BuildContext context) => Home(),
      }
    );
  }
}