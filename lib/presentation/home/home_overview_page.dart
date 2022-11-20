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
      body: const StartTriageButtonWidget(),
    );
  }
}