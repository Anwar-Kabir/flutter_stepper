import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(steps: const[
          Step(title: Text("Step 1"),
              content: Text("Information for Step 1"),
              subtitle: Text("subtitle 1"),

           ),

          Step(title: Text("Step 2"),
            content: Text("Information for Step 2"),
              subtitle: Text("subtitle 2"),
                ),

          Step(title: Text("Step 3"),
            content: Text("Information for Step 3"),
              subtitle: Text("subtitle 1"),
               ),
        ],

          onStepTapped: (int Index){
          setState(() {
            _currentStep = Index;
          });
          },
          currentStep: _currentStep,
          onStepContinue: (){
          if(_currentStep!=2){
            setState(() {
              _currentStep+=1;
            });
          }
          },
          onStepCancel: (){
          if(_currentStep!=0){
            setState(() {
              _currentStep-=1;
            });
          }
          },
        ),
      ),
    );
  }
}
