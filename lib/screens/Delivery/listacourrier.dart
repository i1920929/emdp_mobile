import 'package:flutter/material.dart';

class ListaCourrierScreen extends StatelessWidget {
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
                      'Lista de Courrier', textAlign: TextAlign.right,
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

Widget contenido() {
  return Container(
      child: Column(children: [
    Container(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      Icons.search,
                      color: Color.fromRGBO(255, 36, 153, 1),
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    FlatButton(
                      onPressed: _login,
                      minWidth: 40,
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
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ])),
            ]))
  ]));
}

Future<void> _login() async {}
