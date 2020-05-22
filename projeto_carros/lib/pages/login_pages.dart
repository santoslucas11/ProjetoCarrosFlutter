import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Carros"),
        ),
        body: _body());
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _text("Login", "Digite o login"),
          SizedBox(height: 10),
          _text("Senha", "Digite a senha", password: true),
          SizedBox(height: 20),
          _button("Entrar"),
          SizedBox(height: 10),
          _button("Cancelar"),
        ],
      ),
    );
  }

  _button(String text) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue[300],
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          print("login");
        },
      ),
    );
  }

  _text(String label, String hint, {bool password = false}) {
    return TextFormField(
      obscureText: password,
      style: TextStyle(fontSize: 20, color: Colors.blue[300]),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: TextStyle(fontSize: 20, color: Colors.blue[300]),
      ),
    );
  }
}
