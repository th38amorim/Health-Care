import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_flow/widgets/proceed_triage_button_widget.dart';

class WhatBodyPains extends StatefulWidget {
  const WhatBodyPains({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  State<WhatBodyPains> createState() => _WhatBodyPainsState();
}

class _WhatBodyPainsState extends State<WhatBodyPains> {

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
              title: const Text('Corpo'),
              value: coriza, 
              onChanged: (newValue) {
                setState(() {
                  coriza = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Peito'),
              value: dorGarganta, 
              onChanged: (newValue) {
                setState(() {
                  dorGarganta = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Perna'),
              value: faltaAr, 
              onChanged: (newValue) {
                setState(() {
                  faltaAr = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Braço'),
              value: respirar, 
              onChanged: (newValue) {
                setState(() {
                  respirar = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Cabeça'),
              value: tosse, 
              onChanged: (newValue) {
                setState(() {
                  tosse = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Outros'),
              value: olfato, 
              onChanged: (newValue) {
                setState(() {
                  olfato = newValue!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Não possuo'),
              value: paladar, 
              onChanged: (newValue) {
                setState(() {
                  paladar = newValue!;
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