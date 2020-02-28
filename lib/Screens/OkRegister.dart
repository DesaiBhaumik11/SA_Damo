import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegistrationScreenState();
  }
}

class RegistrationScreenState extends State<RegistrationScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var regName = TextEditingController();
  var regEmail = TextEditingController();
  var regPhoneNumber = TextEditingController();
  var regPassword = TextEditingController();
  var regConformPassword = TextEditingController();

  bool _notShowPassword = true;
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registration Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.green[800]
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                width: 100,
              //  color: Colors.blue,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey[900],
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQf9UDq4tsvB8SQ7Kz6FugTDxwh22MLbVJlACifly-96NfPRrGR"
                          )
                        )
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: InkWell(
                          onTap: () {

                          },
                          child: Card(
                            elevation: 2,
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 330,
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Card(
              elevation: 5,
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Form(
                key: _formKey,
                autovalidate: _autoValidate,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Name"),
                      Container(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                            //  borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            focusColor: Colors.deepPurple,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: regName,
                          validator: nameValidation,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Phone Number"),
                      Container(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                             // borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            focusColor: Colors.deepPurple,
                          ),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.newline,
                          controller: regPhoneNumber,
                          validator: phoneNumberValidation,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Email"),
                      Container(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            focusColor: Colors.deepPurple,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.go,
                          controller: regEmail,
                          validator: emailValidation,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Password"),
                      Container(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                            //  borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            focusColor: Colors.deepPurple,
                          ),
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.send,
                          obscureText: true,
                          controller: regPassword,
                          validator: passwordValidation,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Conform Password"),
                      Container(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            //    borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              focusColor: Colors.deepPurple,
                              suffixIcon: IconButton(
                                icon: Icon(_notShowPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _notShowPassword = !_notShowPassword;
                                  });
                                },
                              )),
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.done,
                          obscureText: _notShowPassword,
                          controller: regConformPassword,
                          validator: conformPasswordValidation,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if(_formKey.currentState.validate()) {
                var route = new MaterialPageRoute(
                    builder: (BuildContext context) => null
//                    new SecondPage(
//                      value: User(
//                        username: regName.text ,
//                        email: regEmail.text ,
//                        phoneNumber: regPhoneNumber.text ,
//                        password: regPassword.text ,
//                        conformPassword: regConformPassword.text ,
//                      ) ,
//                    ) ,
                );
                Navigator.of(context).push(route);
              } else {
                // validation error
                setState(() {
                  _autoValidate = true;
                });
              }
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                    blurRadius: 10,
                  )
                ],
                color: Colors.green[700]
              ),
              child: Text(
                'Registration',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Assets/Splash screen2.png")
                )
            ),
          )
        ],
      ),
    );
  }
  String nameValidation (String value) {
    String pattern = '''^[a-zA-Z0-9]+([_ -]?[a-zA-Z0-9])*\$''';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0) {
      return "Username is require";
    } else if(!regExp.hasMatch(value)) {
      return "Invaid UserName";
    } else
      return null;
  }

  String emailValidation (String value) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0) {
      return "Email is require";
    } else if(!regExp.hasMatch(value)) {
      return "Invaid Email";
    } else
      return null;
  }
  String phoneNumberValidation (String value) {
    String pattern = '''^([6-9]{1})([123456789]{1})([0-9]{8})\$''';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0) {
      return "PhoneNumber is require";
    } else if(!regExp.hasMatch(value)) {
      return "Invaid PhoneNumber";
    } else
      return null;
  }
  String passwordValidation (String value) {
    String pattern = '''^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})''';

    RegExp regExp = new RegExp(pattern);
    if(value.length == 0) {
      return "Password is require";
    } else if(!regExp.hasMatch(value)) {
      return "Invaid Password";
    } else
      return null;
  }
  String conformPasswordValidation (String value) {
    print("Test"+regPassword.text);

    if (value.length == 0) {
      return "Conform Password is require";
    } else if (value != regPassword.text) {
      return "Password dosen\'t match";
    } else
      return null;
  }
}

class User {
  final String username, email, phoneNumber, password, conformPassword;

  const User(
      {
        this.username,
        this.email,
        this.phoneNumber,
        this.password,
        this.conformPassword,
      });
}