import 'package:flutter/material.dart';
import 'package:projeto_carros/pages/api_response.dart';
import 'package:projeto_carros/pages/home_page.dart';
import 'package:projeto_carros/pages/login_api.dart';
import 'package:projeto_carros/pages/usuario.dart';
import 'package:projeto_carros/utils/alert.dart';
import 'package:projeto_carros/utils/nav.dart';
import 'package:projeto_carros/widgets/app_button.dart';
import 'package:projeto_carros/widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();

  final _tSenha = TextEditingController();

  final _focusSenha = FocusNode();

  bool _showProgress = true;

  @override
  void initState() {
    super.initState();
  }

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
            AppText(
              "Login",
              "Digite o login",
              controller: _tLogin,
              validator: _validateLogin,
              keyboardType: TextInputType.emailAddress,
              netxFocus: _focusSenha,
            ),
            SizedBox(height: 10),
            AppText(
              "Senha",
              "Digite a senha",
              password: true,
              controller: _tSenha,
              validator: _validateSenha,
              keyboardType: TextInputType.number,
              focusNode: _focusSenha,
            ),
            SizedBox(height: 20),
            AppButton(
              "Entrar", 
              onPressed: _onClickLogin,
              showProgress: _showProgress,
              ),            
          ],
        ),
      ),
    );
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite a login";
    } else {
      return null;
    }
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }

    //if (text.length < 6) {
      //return "A senha precisa ter pelo menos 6 caracteres";
    //}

    return null;
  }

  _onClickLogin() async{
    bool formOk = _formKey.currentState.validate();

    if (!formOk) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");

    ApiResponse response = await LoginApi.login(login, senha);

    if(response.ok){

      Usuario user =  response.result;

      print(">>> $user");
      push(context, HomePage());
    }else{
      alert(context, response.msg);
    }
  }
}
