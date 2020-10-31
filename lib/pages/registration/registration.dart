import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/services/registration_service.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => new _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  int currentStep = 0;
  bool isComplete = false;
  static String phoneNumber;
  static String password;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : Navigator.pop(context);
  }

  goTo(int step) {
    if (step == steps.length - 1) {
      RegistrationService.register(phoneNumber, password, password);
    }
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
            onChanged: (String value) {
              phoneNumber = value;
            },
          )
        ],
      ),
    ),
    Step(
      isActive: true,
      state: StepState.indexed,
      title: const Text('Нууц үг'),

      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Нууц үг'),
            onChanged: (String value) {
              password = value;
            },
          ),
        ],
      ),
    ),
    Step(
      state: StepState.indexed,
      isActive: true,
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
