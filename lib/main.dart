import 'package:damo_one/Screens/availableJobs.dart';
import 'package:damo_one/Screens/okFilterScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/DashBordOk.dart';
import 'Screens/OkRegister.dart';
import 'Screens/StatusBar.dart';
import 'Screens/tabBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: RegistrationScreen(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: FlatButton(
            onPressed: (){
              OkFilter().showOkFilter(context);
            },
            child: Text("Open"),
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

