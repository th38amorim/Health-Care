import 'package:flutter/material.dart';

import 'start_triage_button_widget.dart';

class HomeOverViewPage extends StatelessWidget {
  const HomeOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF009B70),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: const [
            SizedBox(height: 50),
            Text(
              'Bem vindo\nao',
              style: TextStyle(
                fontSize: 40
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Health Care!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0XFF009B70)
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35),
            Text(
              'Seu assistente de triagem online',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70),
            Text(
              'Para dar início a sua triagem online e agendar o seu atendimento, clique no botão "Iniciar Triagem" abaixo',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            StartTriageButtonWidget(),
          ],
        ),
      ),
    );
  }
}