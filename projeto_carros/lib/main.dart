import 'package:flutter/material.dart';
import 'package:projeto_carros/pages/login_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue[100],
      ),
      home: LoginPage(),
    );
  }
}
