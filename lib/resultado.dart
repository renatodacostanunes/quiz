import 'package:flutter/material.dart';
import 'package:quiz/controller.dart';

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado';

  Resultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Curso de Flutter & Dart'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Resultado',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Você acertou\n$acertos de ${quiz.length} \nperguntas',
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      quiz.clear();
                      totalPerguntas = 0;
                      acertos = 0;
                      erros = 0;
                      perguntaNumero = 0;
                      print(quiz);
                      Navigator.popUntil(context, ModalRoute.withName('/'));

                      print('pressionado');
                    },
                    child: const Text(
                      'Jogar Novamente',
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
