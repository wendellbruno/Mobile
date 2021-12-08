import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        this._resultado = "Valor invalido, ultilize valores acima de 0 e ( . )";
      });
    } else {
      if (precoAlcool / precoGasolina >= 0.7) {
        setState(() {
          this._resultado = "Abastecer gasolina";
        });
      } else {
        this._resultado = "Abastecer Alcool";
      }
      _limparCampos();
    }
  }

  void _limparCampos() {
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Álcool ou Gasolina"), backgroundColor: Colors.blue),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Image.asset("img/logo.png"),
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Saiba qual a melhor opção para o abastecimento do seu carro",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  )),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Preço Álcool ex: 1.59"),
                style: const TextStyle(fontSize: 18),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Preço Gasolina ex: 3.15"),
                style: const TextStyle(fontSize: 18),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text("Calcular", style: TextStyle(fontSize: 20)),
                    onPressed: _calcular),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_resultado,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
