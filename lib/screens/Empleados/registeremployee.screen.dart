import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/Principal/principalwhithmenus.screen.dart';
import 'package:emdp_mobile/screens/Empleados/msgemployee.screen.dart';
import 'package:emdp_mobile/screens/Principal/principal.screen.dart';

class RegisterEmployeeScreen extends StatefulWidget {
  @override
  _RegisterEmployeeScreenState createState() => _RegisterEmployeeScreenState();
}

class _RegisterEmployeeScreenState extends State<RegisterEmployeeScreen> {
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
                    'Registro de empleado', textAlign: TextAlign.right,
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
                      child: _card(context),
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

Widget _card(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(5),
          height: 350,
          width: 350,
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
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nombres', textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                Container(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  'DNI', textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                Container(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Email', textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                Container(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Dirección', textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                Container(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Celular', textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                Container(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Fecha de nacimiento', textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                Container(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      suffixIcon: const Icon(
                        Icons.calendar_today,
                        color: Color.fromRGBO(255, 36, 153, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrincipalScreen()),
                  );
                },
                minWidth: 150,
                color: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: const BorderSide(
                      color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                ),
                child: Text(
                  'Cancelar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MsgEmployeeScreen()),
                  );
                },
                minWidth: 150,
                color: Color.fromRGBO(255, 36, 153, 1),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Text(
                  'Guardar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
