//criando a funcao main

import 'package:flutter/material.dart';

void main() {
  //passa o widget
  runApp(MaterialApp(
      //informa o titulo - opçional
      title: 'Contador de Pessoas',
      //definindo a homepage
      home: Home()));
}

//criando um widget StatefulWidget
class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  int _people = 0;
  String _infoText = "Pode Entrar!";

  //funcao para alterar o numero de pessoas

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Deu ruim";
      } else if (_people <= 10) {
        _infoText = "Pode Entrar!";
      } else {
        _infoText = "Lotado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/coffee.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          //eixo principal
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas no local: $_people",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  //espaços entre os botoes
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      '+1',
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    //funcão anonima
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  //espaços entre os botoes
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text(
                        '-1',
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      //funcão anonima
                      onPressed: () {
                        _changePeople(-1);
                      }),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          ],
        )
      ],
    );
  }
}
