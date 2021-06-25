import 'package:flutter/material.dart';
import 'package:practica2/settings/color_settings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.splashColorApp,
      appBar: AppBar(
        backgroundColor: ColorApp.secondaryColorApp,
        title: Text('Topicos Avanzados :)'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: ColorApp.secondaryColorApp),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://img1.pnghut.com/t/7/23/4/mESp2X7Pqu/human-behavior-facial-hair-expression-exploit-guy-fawkes-mask.jpg'),),
              accountName: Text('Alejandro Capilla', style: TextStyle(color: Colors.white),), 
              accountEmail: Text('iamefman@gmail.com', style: TextStyle(color: Colors.white60),),
            ),

            ListTile(
              tileColor: ColorApp.backColorApp,
              leading: Icon(Icons.thermostat, color: Colors.white,),
              title: Text('Conversor C <-> F', style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, '/conversor');
              },
            ),

            ListTile(
              tileColor: ColorApp.backColorApp,
              leading: Icon(Icons.phone, color: Colors.white,),
              title: Text('Intenciones', style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, '/intenciones');
                
              },
            ),

            ListTile(
              tileColor: ColorApp.backColorApp,
              leading: Icon(Icons.phone, color: Colors.white,),
              title: Text('API REST', style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, '/populares');
              },
            ),

            SizedBox(
              height: 15,
            ),

            ListTile(
              tileColor: ColorApp.backColorApp,
              leading: Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text('Salir', style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}