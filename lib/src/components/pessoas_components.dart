import 'package:contadorpessoas/src/components/capacidade_maxima.dart';
import 'package:flutter/material.dart';

class Pessoas extends StatefulWidget {
  @override
  _PessoasState createState() => _PessoasState();
}

class _PessoasState extends State<Pessoas> {
  int _people = 0;

  String _infoText = 'Pode Entrar!';

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = 'Ação Inválida!';
      } else if (_people <= capacity - 1) {
        _infoText = 'Pode Entrar!';
      } else {
        _infoText = 'Capacidade Máxima!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          'Pessoas: $_people',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                elevation: 15,
                color: Colors.purple[100],
                onPressed: () {
                  _changePeople(1);
                },
                child: Text(
                  '+1',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              RaisedButton(
                elevation: 15,
                color: Colors.purple[100],
                onPressed: () {
                  _changePeople(-1);
                },
                child: Text(
                  '-1',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          _infoText,
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepPurple[300],
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
