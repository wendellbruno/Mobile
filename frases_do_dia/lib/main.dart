import 'package:flutter/material.dart';
import "dart:math";

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {
    var frases = [
      "A vida é um pé de manga !",
      "Prefiro morrer doque perder a vida !",
      "Se fosse facil não seria dificil !",
      "Estou aprendendo flutter."
    ];

    var _novaFrase = "Clique parar gerar uma nova frase";

    void _gerarFrase() {
      var numeroSorteado = Random().nextInt(frases.length);

      setState(() {
        _novaFrase = frases[numeroSorteado];
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            /* decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber)),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("img/logo.png"),
                Text(
                  _novaFrase,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.lightBlue,
                  onPressed: _gerarFrase,
                ),
              ],
            ),
          ),
        ));
  }
}
