//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ConfirmEntraSaScreen extends StatelessWidget {
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
                      'Confirmacion de entrada & salida',
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlatButton(
                            onPressed: _login,
                            minWidth: 150,
                            color: Color.fromRGBO(255, 36, 153, 1),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: Text(
                              'Entradas',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: _login,
                            minWidth: 150,
                            color: Color.fromRGBO(255, 36, 153, 1),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: Text(
                              'Salidas',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lista de entradas',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 36, 153, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Fecha Actual',
                                  style: (TextStyle(
                                    color: Color.fromRGBO(255, 36, 153, 1),
                                    fontSize: 13,
                                  )),
                                ),
                                Text(
                                  '12/01/2021',
                                  style: (TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Hora Actual',
                                  style: (TextStyle(
                                    color: Color.fromRGBO(255, 36, 153, 1),
                                  )),
                                ),
                                Text(
                                  '12:45:12 am',
                                  style: (TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 350.0,
                      height: 300,
                      color: Colors.grey.withOpacity(0),
                      child: ListView(
                        children: [
                          _pendientes(),
                          _pendientes(),
                          _pendientes(),
                        ],
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
                      // Se ejecuta este codigo al hacer clic en el action button
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
      ),
    );
  }
}

Future<void> _login() async {
  /*
    print('U: ${this._usernameCtrl.text}, P: ${this._pwdCtrl.text}');
    AuthService service = AuthService();
    User user =
        await service.login(this._usernameCtrl.text, this._pwdCtrl.text);
    if (user == null) {
      setState(() {
        _error = 'Usuario o clave incorrecta';
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }
  }
  */
}

Widget _pendientes() {
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
    child: _pendetails(),
  );
}

Widget _pendetails() {
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
                      'Fecha: ',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    Text(
                      '13/01/2021',
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
                      'Hora: ',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    Text(
                      '12:31:12 pm',
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
          onPressed: _login,
          minWidth: 150,
          color: Color.fromRGBO(255, 36, 153, 1),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          child: Text(
            'Confirmar',
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
