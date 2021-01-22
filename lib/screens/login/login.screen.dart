//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 75,
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
                      'Bienvenido!!!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w100,
                      ),
                      //style: GoogleFonts.getFont('Roboto'),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 36, 153, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 36, 153, 1),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromRGBO(255, 36, 153, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      obscuringCharacter: '*',
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
                          Icons.remove_red_eye,
                          color: Color.fromRGBO(255, 36, 153, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    FlatButton(
                      onPressed: _login,
                      minWidth: 150,
                      color: Color.fromRGBO(255, 36, 153, 1),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: Text(
                        'Ingresar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
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
