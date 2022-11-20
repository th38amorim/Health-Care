import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_flow/widgets/triage_questions_widget.dart';

class TriageFlowOverviewPage extends StatefulWidget {
  const TriageFlowOverviewPage({super.key});

  @override
  State<TriageFlowOverviewPage> createState() => _TriageFlowOverviewPageState();
}

class _TriageFlowOverviewPageState extends State<TriageFlowOverviewPage> {
  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF009B70),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0XFF009B70),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(height: 2, width: MediaQuery.of(context).size.width, color: Colors.white),
              Container(
                height: 20, 
                width: 200, 
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'Auto Triagem',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          const TriageQuestionsWidget(),
        ],
      )
    );
  }
}
