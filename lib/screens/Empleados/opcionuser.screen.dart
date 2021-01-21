import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/Principal/principalwhithmenus.screen.dart';
import 'package:emdp_mobile/screens/Empleados/registeremployee.screen.dart';
import 'package:emdp_mobile/screens/Entrada/registerentrada.screen.dart';
import 'package:emdp_mobile/screens/Salida/registersalida.screen.dart';
import 'package:emdp_mobile/screens/Salida/confirmensa.screen.dart';

class OpcionUserScreen extends StatefulWidget {
  @override
  _OpcionUserScreenState createState() => _OpcionUserScreenState();
}

class _OpcionUserScreenState extends State<OpcionUserScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      drawer: Drawer(
        child: PrincipalMenuScreen(),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/LogoEMDP.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 450,
                    height: 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/linea.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '¿Que deseas hacer?',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    //style: GoogleFonts.getFont('Roboto'),
                  ),
                  SizedBox(height: 16),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: _opcion(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 15, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  backgroundColor: Color.fromRGBO(255, 36, 153, 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _opcion(BuildContext ctx) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: _detailopcion1(ctx),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: _detailopcion2(ctx),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: _detailopcion3(ctx),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: _detailopcion4(ctx),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _detailopcion1(BuildContext ctx) {
  return Container(
    child: Column(
      children: [
        Container(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  ctx,
                  MaterialPageRoute(
                      builder: (context) => RegisterEmployeeScreen()),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/register.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Registrar empleados', textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.normal),
                        //style: GoogleFonts.getFont('Roboto'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _detailopcion2(BuildContext ctx) {
  return Container(
    child: Column(
      children: [
        Container(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  ctx,
                  MaterialPageRoute(
                      builder: (context) => RegisterEntradaScreen()),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/entrada.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Registrar entrada', textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.normal),
                        //style: GoogleFonts.getFont('Roboto'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _detailopcion3(BuildContext ctx) {
  return Container(
    child: Column(
      children: [
        Container(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  ctx,
                  MaterialPageRoute(
                      builder: (context) => RegisterSalidaScreen()),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/salida.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Registrar salida', textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.normal),
                        //style: GoogleFonts.getFont('Roboto'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _detailopcion4(BuildContext ctx) {
  return Container(
    child: Column(
      children: [
        Container(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  ctx,
                  MaterialPageRoute(builder: (context) => ConfirmensaScreen()),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/confirm.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'Confirmar entradas y salidas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.normal),
                        //style: GoogleFonts.getFont('Roboto'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
