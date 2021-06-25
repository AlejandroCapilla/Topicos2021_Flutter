import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:practica2/settings/color_settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class IntencionesScreen extends StatelessWidget {
  const IntencionesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final image = ImagePicker();
    String pathImage;

    Event buildEvent({Recurrence? recurrence}) {
    return Event(
      title: 'Test eventeee',
      description: 'example',
      location: 'Flutter app',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(Duration(minutes: 30)),
      allDay: false,
      androidParams: AndroidParams(
        emailInvites: ["test@example.com"],
      ),
      recurrence: recurrence,
    );
    }
    

    return Scaffold(
      backgroundColor: ColorApp.secondaryColorApp,
      appBar: AppBar(
        title: Text("Intenciones"),
        backgroundColor: ColorApp.backColorApp,
      ),
      body: ListView(
        children: [
          // Abrir una pagina web / Llamada telefonica / Enviar Email / Mandar sms / Tomar foto
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Abrir pagina web", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('www.itcelaya.edu.mx'),
                    Icon(Icons.touch_app),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.language),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  _OpenURL();
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Llamada telefonica", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('Hacer una llamada'),
                    Icon(Icons.touch_app),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.phone),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  _MakeCallPhone();
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Enviar SMS", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('461 378 5745'),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.message),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  _SendSMS();
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Enviar email", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('www.itcelaya.edu.mx'),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.email),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  _SendEMAIL();
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Tomar fotografia", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('www.itcelaya.edu.mx'),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.camera),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  //_OpenCamera();
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Mapa", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('Abrir mapa'),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.location_on),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  MapsLauncher.launchQuery('Celaya Guanajuato, Mexico');
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Calendario",
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('Abrir calendario'),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.calendar_today),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Add2Calendar.addEvent2Cal(buildEvent());
                },
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Facebook", 
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('Validar inicio de sesión en facebook'),
                  ],
                ),
                leading: Container(
                  height:38,
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.facebook),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black)
                      )
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  if (kIsWeb) {
                    FacebookAuth.instance.webInitialize(
                      appId: "1329834907365798",
                      cookie: true,
                      xfbml: true,
                      version: "v11.0",
                    );
                  }
                },
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _OpenURL() async{
    const url = 'https://www.itcelaya.edu.mx';
    if(await canLaunch(url)) {
      await launch(url);
    }
  }

  Future<void> _MakeCallPhone() async {
    const tel = 'tel:4613785785';
    if(await canLaunch(tel)) {
      await launch(tel);
    }
  } 

  Future<void> _SendSMS() async {
    const tel = 'sms:4613785785';
    if(await canLaunch(tel)) {
      await launch(tel);
    }
  } 

  Future<void> _SendEMAIL() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'isctorres@gmail.com',
      query: 'subject=Hola Mundo&body=Hola, buen dia :)'
    );

    var email = params.toString();
    if(await canLaunch(email)) {
      await launch(email);
    }
  } 

  /*Future<void> _OpenCamera() async {
    final foto = image .getImage(source: ImageSource.camera);
    pathImage = foto.path;
  }*/
}