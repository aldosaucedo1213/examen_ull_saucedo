import 'package:flutter/material.dart';

class Pantallastepper extends StatefulWidget {
  const Pantallastepper({Key? key}) : super(key: key);

  @override
  State<Pantallastepper> createState() => _PantallastepperState();
}

class _PantallastepperState extends State<Pantallastepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stepper'),
        centerTitle: true,
      ),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              isActive: _currentStep == 0,
              title: const Text('paso 1'),
              content: const Text(
                'información para el paso 1',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Step(
              isActive: _currentStep == 1,
              title: const Text('paso 2'),
              content: const Text(
                'información para el paso 2',
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            Step(
              isActive: _currentStep == 2,
              title: const Text('paso 3'),
              content: const Text(
                'información para el paso 3',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          type: StepperType.horizontal,
        ),
      ),
    );
  }
}
