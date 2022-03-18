import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children:  <Widget>[
         const Text(
            "Start Or Join Meeting",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.asset('assets/images/onboarding.jpg'),
        ],
      ),
    );
  }
}
