import 'package:flutter/material.dart';
import 'package:quiz/criar_perguntas.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/Criar': (context) => CriarPerguntas(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                          // fit: BoxFit.scaleDown,
                          // width: constraints.maxWidth,
                          height: constraints.maxHeight * 0.50,
                        ),
                        Divider(
                          height: constraints.maxHeight * 0.30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            fixedSize: Size(
                              constraints.maxWidth * 0.80,
                              constraints.maxHeight * 0.2,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'QntdPerguntas');
                            print('pressionado');
                          },
                          child: const Text(
                            'Jogar',
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // Container(
              //   color: Colors.red,
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
