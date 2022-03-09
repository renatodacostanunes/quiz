import 'package:flutter/material.dart';
import 'package:quiz/controller.dart';

class QntdPerguntas extends StatefulWidget {
  static const routeName = 'QntdPerguntas';
  const QntdPerguntas({Key? key}) : super(key: key);

  @override
  _QntdPerguntasState createState() => _QntdPerguntasState();
}

class _QntdPerguntasState extends State<QntdPerguntas> {
  TextEditingController totalPerguntasController =
      TextEditingController(text: '1');

  void aumentar() {
    setState(() {
      totalPerguntas++;
      totalPerguntasController.text = totalPerguntas.toString();
      print('aumentou $totalPerguntas');
    });
  }

  void diminuir() {
    setState(() {
      totalPerguntas--;
      totalPerguntasController.text = totalPerguntas.toString();
      print('diminuiu $totalPerguntas');
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Curso de Flutter & Dart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          width: size.width,
          height: size.height,
          // color: Colors.green,
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Column(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          // fit: BoxFit.fill,
                          // width: constraints.maxWidth,
                          height: constraints.maxHeight * 0.50,
                        ),
                        Divider(
                          height: constraints.maxHeight * 0.07,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                fixedSize: Size(
                                  constraints.maxWidth * 0.20,
                                  constraints.maxHeight * 0.15,
                                ),
                              ),
                              onPressed: diminuir,
                              child: const Text(
                                '-',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: SizedBox(
                                width: constraints.maxWidth * 0.20,
                                height: constraints.maxHeight * 0.15,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 50),
                                  controller: totalPerguntasController,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                fixedSize: Size(
                                  constraints.maxWidth * 0.20,
                                  constraints.maxHeight * 0.15,
                                ),
                              ),
                              onPressed: aumentar,
                              child: const Text(
                                '+',
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: constraints.maxHeight * 0.07,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(constraints.maxWidth * 0.8,
                                constraints.maxHeight * 0.20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'Criar');
                          },
                          child: const Center(
                            child: Text(
                              'Continuar',
                              style: TextStyle(fontSize: 50),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // Container(
              //   color: Colors.blue,
              //   width: 100,
              //   height: 20,
              //   child: const Text('Widget que testa a responsividade'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


// body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(
//                 'assets/images/logo.png',
//                 width: 300,
//                 height: 300,
//               ),
//               const Divider(
//                 height: 50,
//               ),
              
//             ],
//           ),
//         ),
//       ),