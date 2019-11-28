import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Home(),
  ));
}

class Home extends StatefulWidget {
  /* Será StatefulWidget e não stateless pois teremos interação. */
  @override
  _HomeState createState()=>_HomeState();
}
class _HomeState extends State<Home>{
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String _infoText = "Informe seus dados!";
    void _resetar(){
      pesoController.text = "";
      alturaController.text = "";
      _infoText = "Informe seus dados!";
    }
    void _calcular(){
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text)/100;// cm para m
      double imc = peso / (altura*altura);
      //calculo do imc peso dividido pela altura ao quadrado.
        if (imc < 18.6){
          _infoText = "Abaixo do peso(${imc.toStringAsPrecision(4)})";
        }
    }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
            onPressed: _resetar )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView (
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person, size: 220.0, color: Colors.green),
            TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso (Kg)",
                  labelStyle: TextStyle(color: Colors.green, fontSize: 25.0)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: pesoController,
            ),
            TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura",
                  labelStyle: TextStyle(color: Colors.green, fontSize: 25.0)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: alturaController,
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: _calcular,
                  child: Text("Calcular",
                      style: TextStyle(color: Colors.white, fontSize: 25.0)),
                ),
              ),
            ),
            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}