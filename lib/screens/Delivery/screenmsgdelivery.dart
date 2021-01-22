import 'package:flutter/material.dart';

class MsgDeliveryScreen extends StatelessWidget {
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
                    SizedBox(height: 16),
                    Text(
                      'Confirmación de Delivery', textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 36, 153, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.normal),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    SizedBox(height: 50),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: _card(),
                      ),
                    ),
                    FlatButton(
                      onPressed: _login,
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

Future<void> _login() async {}

Widget _card() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(5),
          height: 250,
          width: 250,
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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Felicidades', textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 36, 153, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
                SizedBox(height: 16),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/msgconfirm.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '¡Tu pedido a sido registrado!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 36, 153, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                  //style: GoogleFonts.getFont('Roboto'),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
