import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_care/presentation/home/home_overview_page.dart';
import 'package:health_care/presentation/triage_result/triage_result_overview_page.dart';

class CircularProgressIndicatorPage extends StatefulWidget {
  const CircularProgressIndicatorPage({super.key});

  @override
  State<CircularProgressIndicatorPage> createState() =>
      _CircularProgressIndicatorPageState();
}

class _CircularProgressIndicatorPageState
    extends State<CircularProgressIndicatorPage> {
  void startTimer() {
    Timer.periodic(const Duration(seconds: 2), (t) {
      t.cancel();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TriageResultOverviewPage()),
      );
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Color(0XFF009B70),
          strokeWidth: 6,
        ),
      ),
    );
  }
}
