// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PaginaServico extends StatefulWidget {
  // const PaginaServico({Key? key}) : super(key: key);

  Color valor;
  PaginaServico(this.valor);

  @override
  _PaginaServicoState createState() => _PaginaServicoState();
}

class _PaginaServicoState extends State<PaginaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Serviços"),
        ),
        backgroundColor: widget.valor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("img/detalhe_servico.png"),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: const Text(
                        "NOSSOS SERVIÇOS",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Serviços em geral",
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
