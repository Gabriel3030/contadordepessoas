import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(title: "Contador de pessoas", home: Home())); //Material App
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  int _pessoa = 0;
  String _mensagem = "  Entre na pelada!";

  void _changePeople(int delta) {
    setState(() {
      _pessoa += delta;
      if (_pessoa >= 20) {
        _mensagem = " Lotou!";
        _pessoa = 20;
      } else if (_pessoa < 0) {
        _mensagem = " Entre na pelada!";
        _pessoa = 0;
      } else {
        _mensagem = " Entre na pelada!";
      }
    });
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/futebol.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_pessoa",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ), //text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    child: const Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.black),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    child: const Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.black),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _mensagem,
              style: const TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ) //text
          ], //widget
        ) //Column
      ],
    );
  }
}

