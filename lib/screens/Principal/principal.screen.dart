import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/principal/principalwhithmenus.screen.dart';

class PrincipalScreen extends StatefulWidget {
  @override
  _PrincipalScreenState createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 100, 100, 0.5),
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
                    'Bienvenido, Yerald',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    //style: GoogleFonts.getFont('Roboto'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Lista de pendientes',
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
                            'Envios',
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
                            'Pedidos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 340,
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
        Expanded(
          child: Container(
            width: 40,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('assets/images/product.jpg'),
                fit: BoxFit.fill,
              ),
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
                'Peluche Rosado',
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
                      'Cantidad: ',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    Text(
                      '13',
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
                      'Cliente: ',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    Text(
                      'Marta',
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
            'Ver más',
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
