import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController userController;
  TextEditingController passController;

  final _formKey = GlobalKey<FormState>();

  @override void initState() {
    super.initState();
    userController = TextEditingController();
    passController = TextEditingController();
  }

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
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 40),
                    TextFormField(
                      controller: userController,
                      validator: (value) => value.isEmpty ? "Please enter a username" : null,
                      decoration: InputDecoration(
                        labelText: "User",
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5.0)),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 30),
                    TextFormField(
                      controller: passController,
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
                        Navigator.of(context).pushReplacementNamed("/home");
                        /*
                        if (_formKey.currentState.validate()) {}
                        */
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