// ignore_for_file: file_names

import 'package:cara_ou_coroa/PaginaPrincipal.dart';
import 'package:flutter/material.dart';

class PaginaResultado extends StatefulWidget {
  //const PaginaResultado({Key? key}) : super(key: key);

  var resultado;
  PaginaResultado(this.resultado);

  @override
  _PaginaResultadoState createState() => _PaginaResultadoState();
}

class _PaginaResultadoState extends State<PaginaResultado> {
  void _voltar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PaginaPrincipal()));
  }

  @override
  Widget build(BuildContext context) {
    var caminho;
    if (widget.resultado == "cara") {
      caminho = "img/moeda_cara.png";
    } else {
      caminho = "img/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminho),
            GestureDetector(
              onTap: _voltar,
              child: Image.asset("img/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
