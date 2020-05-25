import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("carros"),
      ),
      body: _body(),
    );
  }
}

_body() {
  return Center(
    child: Text(
      "Teste",
      style: TextStyle(
        fontSize: 22,
      ),
    ),
  );
}
