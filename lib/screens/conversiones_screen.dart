import 'package:flutter/material.dart';
import 'package:practica2/settings/color_settings.dart';

class ConversionesScreen extends StatelessWidget {
  const ConversionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txtGrados = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Conversor"),
        backgroundColor: ColorApp.backColorApp,
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: txtGrados,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintText: 'Ingrese los grados a convertir', 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: RaisedButton(
              child: Text("Convertir a fahrenheit"),
              splashColor: ColorApp.colorButon,
              color: ColorApp.backColorApp,
              onPressed: ()  {
                showDialog(context: context,
                  builder: (BuildContext) {
                    return AlertDialog(
                      title: Text('Resultado'),
                      //content: Text(double grados = double.parse();),
                      content: Text(_convertirAFarenheit(txtGrados.text)),

                      actions: [
                      FlatButton(
                        child: Text('Ok'),

                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                      ],
                    );
                  }
                );
              },
            )
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 10.0,
            child: RaisedButton(
              child: Text("Convertir a celsius"),
              splashColor: ColorApp.colorButon,
              color: ColorApp.backColorApp,
              onPressed: ()  {
                showDialog(context: context,
                  builder: (BuildContext) {
                    return AlertDialog(
                      title: Text('Resultado'),
                      content: Text(_convertirACelsius(txtGrados.text)),

                      actions: [
                      FlatButton(
                        child: Text('Ok'),

                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                      ],
                    );
                  }
                );
              },
            )
          ),
        ],
      ),
    );
  }
  _convertirAFarenheit(String gradosf) {
    try {
      double grados = double.parse(gradosf);

      grados = (grados*9/5) + 32;
      return grados.toString()+'°F';
    } catch (e) {
      return 'Ingrese una entrada valida';
    }
  }

  _convertirACelsius(String gradosf) {
    try {
      double grados = double.parse(gradosf);

      grados = (grados-32) * (5/9);
      return grados.toString()+'°C';
    } catch (e) {
      return 'Ingrese una entrada valida';
    }
  }
}