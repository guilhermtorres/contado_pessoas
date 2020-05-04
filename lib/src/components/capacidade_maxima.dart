import 'package:flutter/material.dart';

int capacity = 10;

class CapacidadeMaxima extends StatefulWidget {
  @override
  _CapacidadeMaximaState createState() => _CapacidadeMaximaState();
}

class _CapacidadeMaximaState extends State<CapacidadeMaxima> {
  void changeCapacity(int delta) {
    setState(() {
      capacity += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 220,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: FittedBox(
            child: Text(
              'Capacidade: $capacity',
              style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 30,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  elevation: 15,
                  color: Colors.purple[100],
                  onPressed: () {
                    changeCapacity(-5);
                  },
                  child: Text(
                    '-5',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple,
                    ),
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
                  changeCapacity(5);
                },
                child: Text(
                  '+5',
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
      ],
    ));
  }
}
