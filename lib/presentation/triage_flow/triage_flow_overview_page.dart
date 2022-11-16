import 'package:flutter/material.dart';

class TriageFlowOverviewPage extends StatefulWidget {
  const TriageFlowOverviewPage({super.key});

  @override
  State<TriageFlowOverviewPage> createState() => _TriageFlowOverviewPageState();
}

class _TriageFlowOverviewPageState extends State<TriageFlowOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF009B70),
      appBar: AppBar(
        elevation: 0,
        // title: const Text('Auto Triagem'),
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
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Casos Clínicos',
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
