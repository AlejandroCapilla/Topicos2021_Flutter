import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practica2/screens/dashboard_screen.dart';
import 'package:practica2/settings/color_settings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    TextEditingController txtUserController = TextEditingController();
    TextEditingController txtPassController = TextEditingController();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('fonfo.jpg'))),  
        ),
        Card(
          color: ColorApp.backColorApp,
          margin: EdgeInsets.all(30.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: txtUserController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintText: 'Email user', 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                      ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                TextFormField(
                  controller: txtPassController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                  obscureText: true,
                )
              ]
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            splashColor: ColorApp.splashColorApp,
            child: Icon(Icons.login),
            backgroundColor: ColorApp.colorButon,
            onPressed: () {
              //print(txtUserController.text);
              //print(txtPassController.text);

              //Navegacion usando una instancia del objeto de la UI
              //Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));

              //Navegacion usando rutas Nombradas
              Navigator.pushNamed(context, '/dashboard');
            }
          ),
        )
      ],
    );
  }
}