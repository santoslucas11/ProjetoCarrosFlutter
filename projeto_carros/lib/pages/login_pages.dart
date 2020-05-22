import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Teste"),
        ),
        body: _body());
  }

  _body() {
    return Container(color: Colors.white);
  }
}
