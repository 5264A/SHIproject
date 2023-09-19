import 'package:flutter/material.dart';

class TrackingPage2 extends StatefulWidget {
  const TrackingPage2({super.key});

  @override
  State<TrackingPage2> createState() => _TrackingPage2State();
}

class _TrackingPage2State extends State<TrackingPage2> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
  int index=0;
  List<Text>list1=[
    Text('Toyota', ),
    Text('VolksWagen'),
    Text('Nissan', ),
    Text('Renault', ),
    Text('Mercedes', ),
    Text('BMW', )
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Stepper(
          elevation: 0, //Horizontal Impact
          // margin: const EdgeInsets.all(20), //vertical impact
          controlsBuilder: controlBuilders,
          type: StepperType.vertical,
          physics: const ScrollPhysics(),
          onStepTapped: onStepTapped,
          onStepContinue: continueStep,
          onStepCancel: cancelStep,
          currentStep: currentStep, //0, 1, 2

          steps: [
            Step(
                title: const Text('Step 1'),
                content: Column(
                  children:[
                    Text('This is the first step.'),],
                ),
                isActive: currentStep >= 0,
                state:
                currentStep >= 0 ? StepState.complete : StepState.disabled),
            Step(
              title: const Text('Step 2'),
              content: const Text('This is the Second step.'),
              isActive: currentStep >= 0,
              state: currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: const Text('Step 3'),
              content: const Text('This is the Third step.'),
              isActive: currentStep >= 0,
              state: currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}