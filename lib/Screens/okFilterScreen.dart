import 'package:damo_one/Screens/okFilStf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OkFilter {
   Future showOkFilter(context) {
    return showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
        context: context,
        builder: (context) {
          return AddFilter();
        });
  }
}
