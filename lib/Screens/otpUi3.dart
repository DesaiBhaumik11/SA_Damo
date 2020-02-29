import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Otp3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<Otp3> {
  TextEditingController controller = TextEditingController();
  String thisText = "";
  int pinLength = 6;

  bool hasError = false;
  String errorMessage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pin Code Text Field Example"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Text(thisText, style: Theme.of(context).textTheme.title),
              ),
              PinCodeTextField(
                autofocus: false,
                controller: controller,
                hideCharacter: true,
                highlight: true,
                highlightColor: Colors.blue,
                defaultBorderColor: Colors.black,
                hasTextBorderColor: Colors.green,
                maxLength: pinLength,
                hasError: hasError,
                maskCharacter: "#",

                onTextChanged: (text) {
                  setState(() {
                    hasError = false;
                  });
                },
                onDone: (text){
                  print("DONE $text");
                },
//                pinCodeTextFieldLayoutType: PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,
                wrapAlignment: WrapAlignment.start,
                pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 30.0),
                pinBoxWidth: 50,
                pinBoxHeight: 50,
                pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
              ),
              Visibility(
                child: Text(
                  "Wrong PIN!",
                  style: TextStyle(color: Colors.red),
                ),
                visible: hasError,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("SUBMIT"),
                      onPressed: () {
                        setState(() {
                          this.thisText = controller.text;
                        });
                      },
                    ),
                    MaterialButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Text("SUBMIT Error"),
                      onPressed: () {
                        setState(() {
                          this.hasError = true;
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}