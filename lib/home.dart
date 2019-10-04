import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  opendatepicker(BuildContext context) {

    print("opendatepicker");

    var alertDialog = AlertDialog(
      title: Text("date picker"),
      content: Text("Choose a date"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          color: Colors.orange,
          child: Text("open date picker"),
          onPressed: () {
            opendatepicker(context);
          },
        ),
      ),
    );
  }
}