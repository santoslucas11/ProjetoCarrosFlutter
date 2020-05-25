import 'package:flutter/material.dart';
import 'package:projeto_carros/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        //scaffoldBackgroundColor: Colors.white 
        //(default branco para todos os Containers dentro do Scaffold)
      ),
      home: LoginPage(),
    );
  }
}
