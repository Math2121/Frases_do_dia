import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    //title:"Frases do dia",

    home:Home(),
  ));


}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Pode se encontrar a felicidade mesmo nas horas mais sombrias, se a pessoa se lembrar de acender a luz.",
    "Esperança é a única coisa mais forte que o medo. Um pouco de esperança é eficaz, muita esperança é perigoso. Faíscas são boas enquanto são contidas.",
    "Tu te tornas eternamente responsável por aquilo que cativas."
  ];

   var _fraseGerada = "Clique abaixo para gerar uma nova frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          //width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color:Colors.black,


                ),
              ),
              RaisedButton(
                child:Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:Colors.white
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}

