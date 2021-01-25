import 'package:flutter/material.dart';
import 'package:packet_tracer/authenticate/login.dart';
import 'package:packet_tracer/home/home.dart';
import 'package:packet_tracer/splash.dart';
import 'package:packet_tracer/wrapper.dart';

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
        //"/": (BuildContext context) => Splash(),
        "/": (BuildContext context) => Wrapper(),
        "/access": (BuildContext context) => LogIn(),
        "/home": (BuildContext context) => Home(),
      }
    );
  }
}