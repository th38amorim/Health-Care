import 'dart:math';

import 'package:flutter/material.dart';

class TriageResultOverviewPage extends StatelessWidget {
  const TriageResultOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    int? randomNumber;
    var rng = Random();
    for (var i = 0; i < 10; i++) {
      randomNumber = rng.nextInt(50);
    }
    
    return Scaffold(
      backgroundColor: const Color(0XFF009B70),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0XFF009B70),
        leading: Container(),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(height: 2, width: MediaQuery.of(context).size.width, color: Colors.white),
              Container(
                height: 20, 
                width: 200, 
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'Resultado',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 600,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 25,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          const Text(
                            'Atendimento Geral',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${DateTime.now().day}/${DateTime.now().month} ${DateTime.now().hour}:${DateTime.now().minute}',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 100),
                          const Text(
                            'SENHA',
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            randomNumber.toString(),
                            style: const TextStyle(
                              fontSize: 26,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            'PRIORIDADE',
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          ),
                          const Text(
                            'ALTA',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.red,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                text: 'Dirija-se ao local de atendimento dentro dos próximos ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 30 minutos ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      // decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'e aguarde sua senha.',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}