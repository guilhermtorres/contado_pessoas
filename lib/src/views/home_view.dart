import 'package:contadorpessoas/src/components/capacidade_maxima.dart';
import 'package:contadorpessoas/src/components/pessoas_components.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contador de Pessoas',
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/papel_de_parede.jpeg'),
          CapacidadeMaxima(),
          Pessoas(),
        ],
      ),
    );
  }
}
