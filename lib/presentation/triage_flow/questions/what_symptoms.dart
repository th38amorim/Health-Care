import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_flow/widgets/proceed_triage_button_widget.dart';

class WhatSymptoms extends StatefulWidget {
  const WhatSymptoms({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  State<WhatSymptoms> createState() => _WhatSymptomsState();
}

class _WhatSymptomsState extends State<WhatSymptoms> {

  final _scrollController = ScrollController();

  bool coriza = false;
  bool dorGarganta = false;
  bool faltaAr = false;
  bool respirar = false;
  bool tosse = false;
  bool olfato = false;
  bool paladar = false;
  bool diarreia = false;
  bool outros = false;
  bool naoPossuo = false;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      controller: _scrollController,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const Text(
              'Se sim, quais?',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 15),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Coriza'),
              value: coriza, 
              onChanged: (newValue) {
                setState(() {
                  coriza = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Dor de garganta'),
              value: dorGarganta, 
              onChanged: (newValue) {
                setState(() {
                  dorGarganta = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Falta de ar'),
              value: faltaAr, 
              onChanged: (newValue) {
                setState(() {
                  faltaAr = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Dificuldade de respirar'),
              value: respirar, 
              onChanged: (newValue) {
                setState(() {
                  respirar = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Tosse'),
              value: tosse, 
              onChanged: (newValue) {
                setState(() {
                  tosse = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Perda ou redução do olfato'),
              value: olfato, 
              onChanged: (newValue) {
                setState(() {
                  olfato = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Alteração no paladar'),
              value: paladar, 
              onChanged: (newValue) {
                setState(() {
                  paladar = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Diarréia'),
              value: diarreia, 
              onChanged: (newValue) {
                setState(() {
                  diarreia = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Outros'),
              value: outros, 
              onChanged: (newValue) {
                setState(() {
                  outros = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Não possuo'),
              value: naoPossuo, 
              onChanged: (newValue) {
                setState(() {
                  naoPossuo = newValue!;
                });
              },
            ),
            const SizedBox(height: 10),
            ProceedTriageButtonWidget(pageController: widget.pageController),
          ],
        ),
      ),
    );
  }
}

