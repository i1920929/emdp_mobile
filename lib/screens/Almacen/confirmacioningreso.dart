import 'package:flutter/material.dart';

class ConfirmacionAlmacenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            elevation: 0,
          ),
          body: Container(
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
                      SizedBox(height: 25),
                      Text(
                        'Confirmación', textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 36, 153, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                        //style: GoogleFonts.getFont('Roboto'),
                      ),
                      SizedBox(height: 4),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: contenido(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget contenido() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Número de Ingreso', textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
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
          Container(
            padding: EdgeInsets.all(20),
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
          Container(
            height: 100,
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
          SizedBox(height: 100),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton(
                  onPressed: _login,
                  minWidth: 100,
                  color: Color.fromRGBO(255, 36, 153, 1),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  child: Text(
                    'Solicitud de Atendido',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
  );
}

Future<void> _login() async {}
