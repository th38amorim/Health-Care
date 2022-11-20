import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_flow/widgets/proceed_triage_button_widget.dart';

class HaveFaver extends StatefulWidget {
  const HaveFaver({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  State<HaveFaver> createState() => _HaveFaverState();
}

class _HaveFaverState extends State<HaveFaver> {

  int radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Teve febre (t°c > 37,8°c) nas últimas 2 semanas?',
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