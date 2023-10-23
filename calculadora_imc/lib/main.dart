import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resultado = "";

  void calcularIMC() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text) / 100;
    double imc = peso / (altura * altura);
    setState(() {
      resultado = "IMC: ${imc.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Peso (kg)"),
            ),
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Altura (cm)"),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calcularIMC,
              child: Text("Calcular"),
            ),
            SizedBox(height: 16.0),
            Text(
              resultado,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
