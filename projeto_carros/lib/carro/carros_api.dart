

import 'package:projeto_carros/carro/carro.dart';

class CarrosApi{
  static List<Carro> getCarros(){
    final carros = List<Carro>();

    carros.add(Carro(nome:"Cadillac Deville Convertible k", urlFoto: "http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Deville_Convertible.png"));
    carros.add(Carro(nome:"MERCEDES-BENZ C63 AMG", urlFoto: "http://www.livroandroid.com.br/livro/carros/esportivos/MERCEDES_BENZ_AMG.png"));
    carros.add(Carro(nome:"Chevrolet Bel-Air 16V", urlFoto: "http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_BelAir.png"));

    return carros;
  }
}