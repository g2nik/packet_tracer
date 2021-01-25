import 'package:flutter/material.dart';
import 'package:packet_tracer/authenticate/sign_up.dart';

class Authenticate extends StatefulWidget {
  @override _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override Widget build(BuildContext context) {
    return SignUp();
  }
}