import 'package:emdp_mobile/screens/Delivery/opciondelibery.screen.dart';
import 'package:flutter/material.dart';
import 'package:emdp_mobile/screens/login/login.screen.dart';

class PrincipalMenuScreen extends StatelessWidget {
  const PrincipalMenuScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 36, 153, 1),
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Yerald Sinche",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Administrador",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Now let's Add the button for the Menu
          //and let's copy that and modify it
          SizedBox(
            child: Container(
              width: 280,
              height: 1,
              color: Colors.white,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OpcionDeliveryScreen(),
                ),
              );
            },
            leading: Icon(
              Icons.account_box,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "Employee",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: 280,
              height: 1,
              color: Colors.white,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.electric_rickshaw,
              color: Colors.white,
              size: 35,
            ),
            title: Text(
              "Delibery",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: 280,
              height: 1,
              color: Colors.white,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.how_to_vote,
              color: Colors.white,
              size: 35,
            ),
            title: Text(
              "Almacen",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: 280,
              height: 1,
              color: Colors.white,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.help,
              color: Colors.white,
              size: 35,
            ),
            title: Text(
              "Ayuda",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: 280,
              height: 1,
              color: Colors.white,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            leading: Icon(
              Icons.logout,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "Cerrar Sesión",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: 280,
              height: 1,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
