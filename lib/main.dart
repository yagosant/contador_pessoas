//criando a funcao main

import 'package:flutter/material.dart';

void main() {
  //passa o widget
  runApp(MaterialApp(
    //informa o titulo - opçional
    title: 'Contador de Pessoas',

    //definindo a homepage
    home: Column(
      //eixoprincipal
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas no local: 0",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                '+1',
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              //funcão anonima
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                '-1',
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              //funcão anonima
              onPressed: () {},
            ),
          ],
        ),
        Text(
          "Podem entrar",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ],
    ),
  ));
}
