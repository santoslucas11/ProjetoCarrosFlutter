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
          TextFormField(
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[300]
            ),
            decoration: InputDecoration(
                labelText: "Login", 
                hintText: "Digite seu login",
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.blue[300]
                ),  
              ),
          ),
          SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
                  labelText: "Senha", 
                  hintText: "Digite sua senha",
                  labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.blue[300]
                ),  
                  ),
              obscureText: true),
          SizedBox(height: 20),
          Container(
            height: 46,
            child: RaisedButton(
              color: Colors.blue[300],
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                print("login");
              },
            ),
          )
        ],
      ),
    );
  }
}
