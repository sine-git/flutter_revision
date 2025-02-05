import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStepper extends StatefulWidget {
  const AppStepper({super.key});

  @override
  State<AppStepper> createState() => AppStepperState();
}

class AppStepperState extends State<AppStepper> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (value) {
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: () {
                  if (_currentStep != 2) {
                    setState(() {
                      _currentStep++;
                    });
                  }
                },
                onStepCancel: () {
                  if (_currentStep != 0) {
                    setState(() {
                      _currentStep--;
                    });
                  }
                },
                steps: [
              Step(
                title: const Text("Step 1"),
                content: const Text("Step 1"),
                isActive: _currentStep == 0,
              ),
              Step(
                  title: const Text("Step 2"),
                  content: const Text("Step 2"),
                  isActive: _currentStep == 1),
              Step(
                  title: const Text("Step 3"),
                  content: const Text("Step 3"),
                  isActive: _currentStep == 2),
            ])));
  }
}
