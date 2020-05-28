import 'package:flutter/material.dart';
import 'package:projeto_carros/utils/nav.dart';

import 'login/login_page.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlFoto =
        "https://banner2.cleanpng.com/20180128/yvw/kisspng-ninja-ico-icon-black-ninja-5a6dee087cdc18.5588411915171538005114.jpg";

    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("mail@provider.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(urlFoto),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("Mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Favoritos");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda"),
              subtitle: Text("Mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Ajuda");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
              subtitle: Text("Mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => _onClickLogout(context),
            ),
          ],
        ),
      ),
    );
  }

  _onClickLogout(BuildContext context) {
    Navigator.pop(context);
    push(context, LoginPage(), replace: true);
  }
}
