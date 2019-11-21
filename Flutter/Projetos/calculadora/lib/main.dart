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
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
          onPressed: (){},)
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
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
          ),
          TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura",
                labelStyle: TextStyle(color: Colors.green, fontSize: 25.0)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25.0),
          )
        ],
      ),
    );
  }
}