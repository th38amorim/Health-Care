import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_flow/widgets/proceed_triage_button_widget.dart';

class LastDaysSymptoms extends StatefulWidget {
  const LastDaysSymptoms({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  State<LastDaysSymptoms> createState() => _LastDaysSymptomsState();
}

class _LastDaysSymptomsState extends State<LastDaysSymptoms> {

  int radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Nos últimos 14 (quatorze) dias teve febre (> 37,8 °c) ou sintomas que sugerem infecção respiratória (tosse, falta de ar, dificuldade de respirar), coriza, dor de garganta, perda ou diminuição do olfato, alteração do paladar, diarréia?',
          style: TextStyle(fontSize: 22),
        ),
        const SizedBox(height: 15),
        RadioListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          value: radioValue,
          groupValue: 1,
          onChanged: (value) {
            setState(() {
              radioValue = 1;
            });
          },
          title: const Text('Sim'),
        ),
        RadioListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          value: radioValue,
          groupValue: 2,
          onChanged: (value) {
            setState(() {
              radioValue = 2;
            });
          },
          title: const Text('Não'),
        ),
        const Spacer(),
        ProceedTriageButtonWidget(pageController: widget.pageController)
      ],
    );
  }
}