import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  Future load(BuildContext context) async {
    return Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        Navigator.pushReplacementNamed(context, "/access");
      });
    });
  }

  @override 
  void initState() {
    super.initState();
    load(context);
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: Center(
        child: Icon(Icons.ac_unit, color: Colors.amberAccent, size: 150),
      ),
    );
  }
}