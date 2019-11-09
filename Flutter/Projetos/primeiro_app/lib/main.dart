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

  int _people = 0;

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
                           _people++;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FlatButton(
                          child: Text("-1",
                              style: TextStyle(fontSize: 40.0, color:Colors.white)),
                          onPressed: () {
                            _people++;
                          },
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "Pode Entrar!",
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
