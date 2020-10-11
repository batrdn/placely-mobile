import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:placely_mobile/constants.dart';

class RegistrationPage extends StatefulWidget {
  @override
  RegistrationPageState createState() => new RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  int currentStep = 0;
  bool isComplete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => isComplete = true);
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  List<Step> steps = [
    Step(
      title: const Text('Утасны дугаар'),
      isActive: true,
      state: StepState.indexed,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Утасны дугаар'),
          )
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.disabled,
      title: const Text('Нууц үг'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Нууц үг'),
          ),
        ],
      ),
    ),
    Step(
      state: StepState.disabled,
      title: const Text('Баталгаажуулах код'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Баталгаажуулах код'),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Бүртгэл үүсгэх'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stepper(
              currentStep: currentStep,
              onStepContinue: next,
              onStepCancel: cancel,
              steps: steps,
              controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                return Row(
                  children: <Widget>[
                    Container(
                      child: FlatButton(
                        onPressed: onStepContinue,
                        color: primaryColor,
                        textColor: Colors.white,
                        child: const Text('Үргэлжлүүлэх'),
                      ),
                      margin: EdgeInsets.only(right: 10, top: 10),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: onStepCancel,
                        child: const Text('Буцах'),
                      ),
                      margin: EdgeInsets.only(top: 10)
                    )
                  ],
                );
              },
            ),
          ),
        ]));
  }
}
