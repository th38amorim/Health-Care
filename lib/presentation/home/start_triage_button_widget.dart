import 'package:flutter/material.dart';

import '../triage_flow/triage_flow_overview_page.dart';

class StartTriageButtonWidget extends StatelessWidget {
  const StartTriageButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TriageFlowOverviewPage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0XFF009B70))
            ),
            child: const Text(
              'Iniciar Triagem',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}