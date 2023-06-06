import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _frases = [
    "A vida é 10% o que acontece comigo e 90% como eu reajo a isso.",
    "O único lugar onde o sucesso vem antes do trabalho é no dicionário.",
    "Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos.",
    "O sucesso normalmente vem para quem está ocupado demais para procurar por ele.",
    "A única maneira de fazer um excelente trabalho é amar o que você faz.",
    "Você deve lutar mais de uma batalha para se tornar um vencedor.",
    "A persistência é o caminho do êxito.",
    "Acredite em si mesmo e todo o resto se encaixa. Acredite em você mesmo e tudo se torna possível.",
    "Não importa a cor do céu. Quem faz o dia bonito é você.",
    "O segredo do sucesso é saber algo que ninguém mais sabe.",
  ];

  var __fraseGerada = "Clique abaixo para gerar uma frase!";

  void _generatePhrase() {
    var sortNumber = Random().nextInt(_frases.length);
    setState(() {
      __fraseGerada = _frases[sortNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        // decoration:
        //     BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo.png"),
              Text(
                "$__fraseGerada",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                onPressed: _generatePhrase,
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                child: const Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
      ),
    );
  }
}
