import 'package:flutter/material.dart';
import 'package:health_care/presentation/triage_flow/questions/body_pain.dart';
import 'package:health_care/presentation/triage_flow/questions/have_cough.dart';
import 'package:health_care/presentation/triage_flow/questions/have_faver.dart';
import 'package:health_care/presentation/triage_flow/questions/have_hospitalar_service.dart';
import 'package:health_care/presentation/triage_flow/questions/have_sore_throat.dart';
import 'package:health_care/presentation/triage_flow/questions/last_day_symptoms.dart';
import 'package:health_care/presentation/triage_flow/questions/shortness_of_breath.dart';
import 'package:health_care/presentation/triage_flow/questions/smell_or_taste.dart';
import 'package:health_care/presentation/triage_flow/questions/what_body_pains.dart';
import 'package:health_care/presentation/triage_flow/questions/what_symptoms.dart';

class TriageQuestionsWidget extends StatefulWidget {
  const TriageQuestionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TriageQuestionsWidget> createState() => _TriageQuestionsWidgetState();
}

class _TriageQuestionsWidgetState extends State<TriageQuestionsWidget> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [
                    LastDaysSymptoms(pageController: pageController),
                    WhatSymptoms(pageController: pageController),
                    HaveFaver(pageController: pageController),
                    HaveCough(pageController: pageController),
                    HaveSoreThroat(pageController: pageController),
                    SmellOrTaste(pageController: pageController),
                    ShortnessBreath(pageController: pageController),
                    HaveBodyPain(pageController: pageController),
                    WhatBodyPains(pageController: pageController),
                    HaveHospitalarService(pageController: pageController)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}