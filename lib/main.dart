import 'package:emdp_mobile/screens/Almacen/almacen.dart';
import 'package:emdp_mobile/screens/Almacen/confirmacioningreso.dart';
import 'package:emdp_mobile/screens/Almacen/screenmsgalmacen.dart';
import 'package:emdp_mobile/screens/Delivery/confirmaciondelivery.dart';
import 'package:emdp_mobile/screens/Delivery/delivery.dart';
import 'package:emdp_mobile/screens/Delivery/listacourrier.dart';
import 'package:emdp_mobile/screens/Delivery/listadelivery.dart';
import 'package:emdp_mobile/screens/Delivery/screenmsgdelivery.dart';
import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/login/login.screen.dart';
import 'package:emdp_mobile/screens/principal/principal.screen.dart';
import 'package:emdp_mobile/screens/empleados/opcionuser.screen.dart';
import 'package:emdp_mobile/screens/empleados/msgemployee.screen.dart';
import 'package:emdp_mobile/screens/empleados/registeremployee.screen.dart';
import 'package:emdp_mobile/screens/entrada/registerentrada.screen.dart';
import 'package:emdp_mobile/screens/entrada/msgentrada.screen.dart';
import 'package:emdp_mobile/screens/salida/registersalida.screen.dart';
import 'package:emdp_mobile/screens/salida/confirmensa.screen.dart';
import 'package:emdp_mobile/screens/salida/msgconfirm.screen.dart';
import 'package:emdp_mobile/screens/salida/msgconfirmsalida.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMDP',
      home: ConfirmacionAlmacenScreen(),
    );
  }
}
