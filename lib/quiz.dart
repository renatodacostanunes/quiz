import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/controller.dart';

import 'package:quiz/resultado.dart';

class Quiz extends StatefulWidget {
  static const routeName = 'Quiz';
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    // quiz.shuffle(); // isso embaralha os itens da lista

    void respondeu(String respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          print('acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }

        print('acertos totais: $acertos erros totais: $erros');

        if (perguntaNumero == quiz.length) {
          print('Terminou o Quiz');

          Navigator.pushNamed(context, 'Resultado');
        } else {
          perguntaNumero++;
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Quiz Curso de Flutter & Dart')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Text('Pergunta $perguntaNumero de ${quiz.length}',
                        style: const TextStyle(fontSize: 20))),
                Text(
                  'Pergunta:\n\n' + quiz[perguntaNumero - 1]['pergunta'],
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 1');
                      respondeu('1');
                    },
                    child: Text(
                      quiz[perguntaNumero - 1]['respostas'][0],
                      style: const TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 2');
                      respondeu('2');
                    },
                    child: Text(
                      quiz[perguntaNumero - 1]['respostas'][1],
                      style: const TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 3');
                      respondeu('3');
                    },
                    child: Text(
                      quiz[perguntaNumero - 1]['respostas'][2],
                      style: const TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressionado 4');
                      respondeu('4');
                    },
                    child: Text(
                      quiz[perguntaNumero - 1]['respostas'][3],
                      style: const TextStyle(fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class BotaoResposta extends StatelessWidget {
//   final String nome;
//   const BotaoResposta({required this.nome, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(
//         nome,
//         style: const TextStyle(fontSize: 20),
//       ),
//       style: ElevatedButton.styleFrom(
//           padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
//     );
//   }
// }
