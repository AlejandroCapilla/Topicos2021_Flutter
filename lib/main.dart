import 'package:flutter/material.dart';
import 'package:practica2/screens/conversiones_screen.dart';
import 'package:practica2/screens/dashboard_screen.dart';
import 'package:practica2/screens/intenciones_screen.dart';
import 'package:practica2/screens/login_screen.dart';
import 'package:practica2/screens/popular_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/dashboard': (context) => DashboardScreen(),
        '/intenciones': (context) => IntencionesScreen(),
        '/conversor': (context) => ConversionesScreen(),
        '/populares': (context) => PopularScreen(),
      },
      home: LoginScreen(),
    );
  }
}