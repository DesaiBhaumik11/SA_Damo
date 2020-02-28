import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'custom_stepper.dart' as s;
import 'verticalStapper.dart' as v;

class StatusBar extends StatefulWidget {
  @override
  _StatusBarState createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    double fontS = MediaQuery.of(context).textScaleFactor * 10;
    return Scaffold(
      appBar: AppBar(
        title: Text("Status of Order"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
//              Container(
//                  height: 100,
//                  color: Colors.transparent,
//                  child: Center(
//                    child: v.CustomStepper(
//                      type: v.StepperType.horizontal,
//                      currentStep: 1,
//                      steps: [
//                        v.Step(
//                            title: Text(
//                              "Order Placed",
//                              style: TextStyle(fontSize: fontS),
//                            ),
//                            state: v.StepState.start,
//                            isActive: true),
//                        v.Step(
//                            title: Text(
//                              "Processing Complete",
//                              style: TextStyle(fontSize: fontS),
//                            ),
//                            state: v.StepState.complete,
//                            isActive: true),
//                        v.Step(
//                            title: Text(
//                              "Production Complete    ",
//                              style: TextStyle(fontSize: fontS),
//                            ),
//                            state: v.StepState.complete,
//                            isActive: false),
//                        v.Step(
//                            title: Text(
//                              "Shipped",
//                              style: TextStyle(fontSize: fontS),
//                            ),
//                            state: v.StepState.complete,
//                            isActive: false),
//                      ],
//                    ),
//                  )),
              v.CustomStepper(
                type: v.StepperType.vertical,
                currentStep: 2,
                steps: [
                  v.Step(
                      title: Text(
                        "Order Placed",
                        style: TextStyle(fontSize: fontS),
                      ),
                      state: v.StepState.disabled,
                      content: Text('x'),
                      isActive: true),
                 v.Step(
                      title: Text(
                        "Processing Complete",
                        style: TextStyle(fontSize: fontS),
                      ),
                      state: v.StepState.complete,
                     content: Text('x'),
                      isActive: true),
                  v.Step(
                      title: Text(
                        "Production Complete    ",
                        style: TextStyle(fontSize: fontS),
                      ),
                      state:v.StepState.indexed,
                      content: Icon(Icons.ac_unit,size: 100,),
                      isActive: false),
                  v.Step(
                      title: Text(
                        "Shipped",
                        style: TextStyle(fontSize: fontS),
                      ),
                      state:v.StepState.disabled,
                      content: Text(''),
                      isActive: false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
