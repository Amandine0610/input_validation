import 'package:flutter/material.dart';
import 'screens/form_screen1.dart'; // Importing Screen1
import 'screens/form_screen2.dart'; // Importing Screen2

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Form App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', 
      routes: {
        '/': (context) => const FormScreen1(), // First screen of the form
        '/form_screen2': (context) => const FormScreen2(firstName: 'First Name', lastName: 'Last Name', email: 'Email'), 
      },
    );
  }
}