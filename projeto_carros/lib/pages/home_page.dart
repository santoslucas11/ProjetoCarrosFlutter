import 'package:flutter/material.dart';

import '../drawer_list.dart';

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
    return Center(
      child: Text(
        "Home",
        style: TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }
}
