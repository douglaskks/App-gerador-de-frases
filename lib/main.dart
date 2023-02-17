// ignore_for_file: deprecated_member_use

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: index(),
    ),
  );
}

class index extends StatefulWidget {
  const index({Key? key}) : super(key: key);

  @override
  State<index> createState() => _mainState();
}

class _mainState extends State<index> {

  var _frases = [
    "A persistência é o caminho do êxito",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação",
    "No meio da dificuldade encontra-se a oportunidade",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    
    var numeroSorteado = Random().nextInt( 4 );

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Color.fromARGB(255, 1, 80, 3),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromARGB(255, 14, 78, 1))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/logo.png"),
            SizedBox(height: 40),
            Text(
              _fraseGerada,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 40),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),
                ),
              color: Color.fromARGB(255, 2, 65, 4),
              onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}