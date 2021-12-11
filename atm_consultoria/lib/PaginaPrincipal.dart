// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields
import 'dart:io';

import 'package:atm_consultoria/PaginaCliente.dart';
import 'package:atm_consultoria/PaginaContato.dart';
import 'package:atm_consultoria/PaginaEmpresa.dart';
import 'package:atm_consultoria/PaginaServico.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  bool _estado = false;

  Color _fundo = Colors.white;

  void _mudarCorDeFundo(bool valor) {
    if (valor == false) {
      setState(() {
        this._fundo = Colors.white;
      });
    } else {
      setState(() {
        this._fundo = Colors.blueGrey;
      });
    }
  }

  void _abrirEmpresa() {
    Navigator.push(context,
        MaterialPageRoute(builder: (constext) => PaginaEmpresa(_fundo)));
  }

  void _abrirServico() {
    Navigator.push(context,
        MaterialPageRoute(builder: (constext) => PaginaServico(_fundo)));
  }

  void _abrirCliente() {
    Navigator.push(context,
        MaterialPageRoute(builder: (constext) => PaginaCliente(_fundo)));
  }

  void _abrirContato() {
    Navigator.push(context,
        MaterialPageRoute(builder: (constext) => PaginaContato(_fundo)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ATM Consultoria"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: _fundo,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("img/logo.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirEmpresa,
                        child: Image.asset("img/menu_empresa.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirServico,
                        child: Image.asset("img/menu_servico.png"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset("img/menu_cliente.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("img/menu_contato.png"),
                      )
                    ],
                  ),
                ),
                SwitchListTile(
                    title: Text("Mudar Cor de tema"),
                    value: _estado,
                    onChanged: (bool valor) {
                      setState(() {
                        _estado = valor;
                        _mudarCorDeFundo(valor);
                      });
                    })
              ],
            ),
          ),
        ));
  }
}
