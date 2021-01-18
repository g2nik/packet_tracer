import 'package:flutter/material.dart';

class Access extends StatefulWidget {
  @override _AccessState createState() => _AccessState();
}

class _AccessState extends State<Access> {

  final _formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 40),
                    TextFormField(
                      validator: (value) => value.isEmpty ? "Please enter a username" : null,
                      decoration: InputDecoration(
                        labelText: "User",
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5.0)),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 30),
                    TextFormField(
                      validator: (value) => value.isEmpty ? "Please enter a password" : null,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5.0)),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 30),
                    ElevatedButton(
                      child: Text('Submit'),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}