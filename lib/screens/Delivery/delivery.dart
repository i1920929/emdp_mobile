import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
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
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Id Delivery', style: TextStyle(fontSize: 18)),
                          Text('Fecha', style: TextStyle(fontSize: 18))
                        ]),
                    SizedBox(height: 3),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: contenido(),
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
                mainAxisAlignment: MainAxisAlignment.start,
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

Widget contenido() {
  return Container(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Datos Venta', textAlign: TextAlign.start,
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
                'Receptor', textAlign: TextAlign.start,
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
                'Telf Receptor', textAlign: TextAlign.start,
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
                'Estado', textAlign: TextAlign.start,
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
                'Fecha de Llegada', textAlign: TextAlign.start,
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
                'Hora Llegada', textAlign: TextAlign.start,
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
                'Courrier', textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
                //style: GoogleFonts.getFont('Roboto'),
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    FlatButton(
                      onPressed: _login,
                      minWidth: 250,
                      color: Color.fromRGBO(255, 36, 153, 1),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side: const BorderSide(
                            color: Color.fromRGBO(255, 36, 153, 1), width: 1.0),
                      ),
                      child: Text(
                        'Buscar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
        ),
        SizedBox(height: 4),
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
                  'OK',
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

Future<void> _login() async {}
