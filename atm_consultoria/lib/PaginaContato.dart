// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PaginaContato extends StatefulWidget {
  //const PaginaContato({Key? key}) : super(key: key);

  Color valor;
  PaginaContato(this.valor);

  @override
  _PaginaContatoState createState() => _PaginaContatoState();
}

class _PaginaContatoState extends State<PaginaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("CLIENTES"),
        ),
        backgroundColor: widget.valor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("img/detalhe_contato.png"),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "CONTATO",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
                  ],
                ),
                // ignore: prefer_const_constructors

                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: const Text("Email : wendellbruno.ti@gmail.com"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Telefone : (79) 9 9999-2465"),
                ),
                Text("celular : mesma coisa")
              ],
            ),
          ),
        ));
  }
}
