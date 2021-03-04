import 'package:flutter/material.dart';

import '../registerdelivery.screen.dart';

class CourierScreen extends StatefulWidget {
  @override
  _CourierScreenState createState() => _CourierScreenState();
}

class _CourierScreenState extends State<CourierScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 100, 100, 0.5),
        toolbarHeight: 0,
        elevation: 0,
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
                  SizedBox(height: 15),
                  Text(
                    'Lista de Couriers',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    //style: GoogleFonts.getFont('Roboto'),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 35,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 36, 153, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 36, 153, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Color.fromRGBO(255, 36, 153, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 350.0,
                    height: 300,
                    color: Colors.grey.withOpacity(0),
                    child: ListView(
                      children: [
                        _pendientes(context),
                        _pendientes(context),
                        _pendientes(context),
                        _pendientes(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _pendientes(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5),
    height: 100,
    width: 80,
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
    child: _pendetails(context),
  );
}

Widget _pendetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage('assets/images/employee.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Yerald Sinche',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                //style: GoogleFonts.getFont('Roboto'),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text(
                      'RUC: ',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    Text(
                      '12548961234',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text(
                      'Telefono: ',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    Text(
                      '986352021',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterDeliveryScreen()),
            );
          },
          minWidth: 150,
          color: Color.fromRGBO(255, 36, 153, 1),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          child: Text(
            'Elegir',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        )),
      ],
    ),
  );
}
