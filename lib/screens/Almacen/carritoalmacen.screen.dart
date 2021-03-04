import 'package:emdp_mobile/screens/Almacen/msgregisteringreso.screen.dart';
import 'package:emdp_mobile/screens/Principal/home.screen.dart';
import 'package:flutter/material.dart';

class CarritoAlmacenScreen extends StatefulWidget {
  @override
  _CarritoAlmacenScreenState createState() => _CarritoAlmacenScreenState();
}

class _CarritoAlmacenScreenState extends State<CarritoAlmacenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  SizedBox(height: 30),
                  Text(
                    'Carrito de Ingresos de productos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    //style: GoogleFonts.getFont('Roboto'),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350.0,
                    height: 200,
                    color: Colors.grey.withOpacity(0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _pendientes(),
                        _pendientes(),
                        _pendientes(),
                      ],
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 120,
                    child: _pendientes2(context),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
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
                      'Volver',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 36, 153, 1),
                        fontSize: 13,
                      ),
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
    height: 140,
    width: 150,
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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 90,
                height: 80,
                margin: EdgeInsets.all(5),
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
            Container(
              width: 30,
              height: 30,
              child: FlatButton(
                onPressed: _login,
                color: Color.fromRGBO(255, 36, 153, 1),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Center(
                    child: Text(
                  'x',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ),
          ],
        ),
        Text(
          'Oso de Felpa',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Producto compuesta con flores y regalos extraordinarios',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 10,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: _login,
                minWidth: 20,
                color: Color.fromRGBO(255, 36, 153, 1),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0)),
                child: Text(
                  '-',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                '1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                //style: GoogleFonts.getFont('Roboto'),
              ),
              FlatButton(
                onPressed: _login,
                minWidth: 20,
                color: Color.fromRGBO(255, 36, 153, 1),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0)),
                child: Text(
                  '+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
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

Widget _pendientes2(context) {
  return Container(
    margin: EdgeInsets.all(5),
    height: 100,
    width: 150,
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
    child: _pendetails2(context),
  );
}

Widget _pendetails2(context) {
  return Container(
    padding: EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(2),
                child: Row(
                  children: [
                    Text(
                      'Total de productos entrantes: ',
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
                padding: EdgeInsets.all(2),
                child: Row(
                  children: [
                    Text(
                      'Total de ingreso de productos: ',
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
            ],
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => MsgRegisterAlmacenScreen()),
            );
          },
          minWidth: 50,
          color: Color.fromRGBO(255, 36, 153, 1),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          child: Text(
            'Realizar ingreso de productos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ),
      ],
    ),
  );
}
