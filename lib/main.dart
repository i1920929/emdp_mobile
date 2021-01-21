import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/login/login.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMDP',
      home: LoginScreen(),
    );
  }
}
