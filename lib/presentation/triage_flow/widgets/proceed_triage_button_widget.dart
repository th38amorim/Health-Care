import 'package:flutter/material.dart';

class ProceedTriageButtonWidget extends StatelessWidget {
  const ProceedTriageButtonWidget({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: const MaterialStatePropertyAll(Size(250, 40)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
        backgroundColor: MaterialStateProperty.all(const Color(0XFF009B70)),
      ),
      onPressed: () {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: const Text(
        'Avançar',
      ),
    );
  }
}