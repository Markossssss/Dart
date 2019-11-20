import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home:Home()));
}
class Home extends StatefulWidget {
  @override
  _Home_State createState() => _Home_State();
}
class _Home_State extends State<Home> {
  String _infoText = "Pode entrar!";
  int _people = 0;
  void _changePeople(int delta){
    setState(() {
        _people += delta;

      if (_people >= 0 && _people <= 5){
        setState(() {
           _infoText = "Fechado!";
        });
      } else if (_people > 5 && _people < 11){
        setState(() {
           _infoText = "Mesas disponíveis!";
        });
      } else {
        setState(() {
           _infoText = "Sem mesas!Estamos na capacidade máxima!";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: <Widget>[
              Image.asset(
                "imagens/restaurant.jpg",
                fit: BoxFit.cover,
                height: 1000.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Pessoas: $_people",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FlatButton(
                          child: Text("+1",
                              style: TextStyle(fontSize: 40.0, color: Colors.white)),
                          onPressed: () {
                            if (_people==11){
                              _changePeople(0);
                            } else {
                              _changePeople(1);
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FlatButton(
                          child: Text("-1",
                              style: TextStyle(fontSize: 40.0, color:Colors.white)),
                          onPressed: () {
                            if (_people==0){
                              _changePeople(0);
                            } else {
                              _changePeople(-1);
                            }
                          },
                        ),
                      ),
                    ],
                  ),

                  Text(
                    _infoText,
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
