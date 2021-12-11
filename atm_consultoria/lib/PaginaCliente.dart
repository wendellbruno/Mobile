// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PaginaCliente extends StatefulWidget {
  //const PaginaCliente({Key? key}) : super(key: key);

  Color valor;
  PaginaCliente(this.valor);

  @override
  _PaginaClienteState createState() => _PaginaClienteState();
}

class _PaginaClienteState extends State<PaginaCliente> {
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
                    Image.asset("img/detalhe_cliente.png"),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "CLIENTES",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
                  ],
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Image.asset("img/cliente1.png"),
                ),
                Text("Empresa de Software"),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Image.asset("img/cliente2.png"),
                ),
                Text("Empresa de auditoria")
              ],
            ),
          ),
        ));
  }
}
