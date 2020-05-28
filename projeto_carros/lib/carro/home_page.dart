import 'package:flutter/material.dart';
import 'package:projeto_carros/carro/carros_api.dart';

import '../drawer_list.dart';
import 'carro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body(),
      drawer: DrawerList(),
    );
  }

  _body() {
    List<Carro> carros = CarrosApi.getCarros();
    return ListView.builder(
        itemCount: carros.length,
        itemBuilder: (context, index) {
          Carro c = carros[index];

          return Row(
            children: <Widget>[
              Image.network(c.urlFoto, width: 200,),
              Flexible(
                child: Text(
                  c.nome,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 22),
                ),
              )
            ],
          );
        });
  }
}
