import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/login/login.screen.dart';
import 'package:emdp_mobile/screens/principal/principal.screen.dart';
import 'package:emdp_mobile/screens/empleados/opcionuser.screen.dart';
import 'package:emdp_mobile/screens/empleados/registeremployee.screen.dart';
import 'package:emdp_mobile/screens/entrada/registerentrada.screen.dart';
import 'package:emdp_mobile/screens/salida/registersalida.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMDP',
      home: RegisterEntradaScreen(),
    );
  }
}
