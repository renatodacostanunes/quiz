import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/homepage.dart';
import 'package:quiz/qntd_perguntas.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/resultado.dart';

import 'criar_perguntas.dart';

void main() {
  // runApp(const Resultado(acertos: 3));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'Quiz': (context) => Quiz(),
        'Criar': (context) => CriarPerguntas(),
        'QntdPerguntas': (context) => QntdPerguntas(),
        Resultado.routeName: (context) => Resultado(),
      },
    );
  }
}
