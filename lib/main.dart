import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TODO App',
      debugShowCheckedModeBanner: false,
      home:  Home(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}