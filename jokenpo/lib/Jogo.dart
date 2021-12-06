import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("img/padrao.png");
  var _mensagem = "Escolha uma opção a baixo";
  var _resultado = "";

  void _opcaoSelecionada(String escolhaUsuario) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];

    print("Escolha do app : " + escolhaApp);
    print("Escolha usuario : " + escolhaUsuario);

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("img/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("img/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("img/tesoura.png");
        });
        break;
    }

    if (escolhaUsuario == "pedra" && escolhaApp == "tesoura" ||
        escolhaUsuario == "tesoura" && escolhaApp == "papel" ||
        escolhaUsuario == "papel" && escolhaApp == "pedra") {
      this._resultado = "VOCÊ GANHOU";
    } else if (escolhaUsuario == "pedra" && escolhaApp == "pedra" ||
        escolhaUsuario == "tesoura" && escolhaApp == "tesoura" ||
        escolhaUsuario == "papel" && escolhaApp == "papel") {
      this._resultado = "EMPATE";
    } else {
      this._resultado = "VOCÊ PERDEU";
    }
    print(this._resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("JokenPo", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do App",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(this._mensagem,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => this._opcaoSelecionada("pedra"),
                child: Image.asset(
                  "img/pedra.png",
                  height: 95,
                ),
              ),
              GestureDetector(
                onTap: () => this._opcaoSelecionada("papel"),
                child: Image.asset(
                  "img/papel.png",
                  height: 95,
                ),
              ),
              GestureDetector(
                onTap: () => this._opcaoSelecionada("tesoura"),
                child: Image.asset(
                  "img/tesoura.png",
                  height: 95,
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                this._resultado,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
