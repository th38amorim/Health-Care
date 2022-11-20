import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_result/circular_progress_indicator_page.dart';

class HaveHospitalarService extends StatefulWidget {
  const HaveHospitalarService({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  State<HaveHospitalarService> createState() => HaveHospitalarServiceState();
}

class HaveHospitalarServiceState extends State<HaveHospitalarService> {

  int radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Trabalha em serviço de saúde hospitalar, laboratorial ou domiciliar?',
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
        ElevatedButton(
          style: ButtonStyle(
            fixedSize: const MaterialStatePropertyAll(Size(250, 40)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
            backgroundColor: MaterialStateProperty.all(const Color(0XFF009B70)),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CircularProgressIndicatorPage()),
            );
          },
          child: const Text(
            'Finalizar',
          ),
        ),
      ],
    );
  }
}