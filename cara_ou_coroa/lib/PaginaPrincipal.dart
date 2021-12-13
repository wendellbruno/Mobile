// ignore_for_file: file_names, unused_local_variable

import 'dart:math';

import 'package:cara_ou_coroa/paginaResultado.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  void _exibirResultado() {
    var moedas = ["cara", "coroa"];
    var numero = Random().nextInt(moedas.length);
    var resultado = moedas[numero];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PaginaResultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("img/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("img/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
