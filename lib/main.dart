import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Импортируем Firebase Core
import 'calculator_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Инициализируем Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CalculatorScreen(),
    );
  }
}