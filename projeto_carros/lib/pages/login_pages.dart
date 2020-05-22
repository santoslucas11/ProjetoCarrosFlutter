import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Carros"),
        ),
        body: _body());
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _text(
              "Login",
              "Digite o login",
              controller: _tLogin,
              validator: _validateLogin,
            ),
            SizedBox(height: 10),
            _text( "Senha", "Digite a senha", password: true, controller: _tSenha, validator: _validateSenha,),
            SizedBox(height: 20),
            _button("Entrar", _onClickLogin),
          ],
        ),
      ),
    );
  }

  String _validateLogin( String text) {
    if (text.isEmpty) {
      return "Digite a login";
    } else {
      return null;
    }
  }

  String _validateSenha( String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }

    if(text.length < 6){
      return "A senha precisa ter pelo menos 6 caracteres";
    }

    return null;
  }

  _onClickLogin() {
    bool formOk = _formKey.currentState.validate();

    if (!formOk) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }

  _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue[300],
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: onPressed,
      ),
    );
  }

  _text(String label, String hint,
      {bool password = false,
      TextEditingController controller,
      FormFieldValidator<String> validator}) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      style: TextStyle(fontSize: 20, color: Colors.blue[300]),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: TextStyle(fontSize: 20, color: Colors.blue[300]),
      ),
    );
  }
}
