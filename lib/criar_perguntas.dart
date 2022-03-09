import 'package:flutter/material.dart';
import 'package:quiz/controller.dart';

class CriarPerguntas extends StatefulWidget {
  CriarPerguntas(
      {Key? key,
      this.quiz,
      this.totalPerguntas,
      this.acertos,
      this.erros,
      this.perguntaNumero})
      : super(key: key);

  List? quiz;
  int? totalPerguntas;
  int? acertos;
  int? erros;
  int? perguntaNumero;

  @override
  _CriarPerguntasState createState() => _CriarPerguntasState();
}

class _CriarPerguntasState extends State<CriarPerguntas> {
  TextEditingController perguntaController = TextEditingController();
  TextEditingController corretaController = TextEditingController();
  TextEditingController alternativa1Controller = TextEditingController();
  TextEditingController alternativa2Controller = TextEditingController();
  TextEditingController alternativa3Controller = TextEditingController();
  TextEditingController alternativa4Controller = TextEditingController();

  void adicionou() {
    quiz.add({
      "pergunta": perguntaController.text,
      "respostas": [
        alternativa1Controller.text,
        alternativa2Controller.text,
        alternativa3Controller.text,
        alternativa4Controller.text,
      ],
      "alternativa_correta": corretaController.text
    });
    print('Dados do Quiz');
    print(quiz);
    setState(() {
      perguntaNumero++;
      if (perguntaNumero == totalPerguntas) {
        // totalPerguntas = 1;
        perguntaNumero = 1;
        Navigator.pushNamed(context, 'Quiz');
      }
    });
    perguntaController.clear();
    alternativa1Controller.clear();
    alternativa2Controller.clear();
    alternativa3Controller.clear();
    alternativa4Controller.clear();
    corretaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Quiz Curso de Flutter & Dart')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Align(
                      alignment: Alignment.center,
                      child: Text('Crie sua pergunta',
                          style: TextStyle(fontSize: 40))),
                  Row(
                    children: [
                      Text(
                        'Pergunta nº ${perguntaNumero.toInt() + 1} de $totalPerguntas',
                        style: const TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextField(
                          controller: perguntaController,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '1:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextField(
                          controller: alternativa1Controller,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '2:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextField(
                          controller: alternativa2Controller,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '3:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextField(
                          controller: alternativa3Controller,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '4:',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextField(
                          controller: alternativa4Controller,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Resposta',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 30,
                        child: TextField(
                          controller: corretaController,
                          style: const TextStyle(fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: adicionou,
                    child: const Text(
                      'Adicionar Pergunta',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
