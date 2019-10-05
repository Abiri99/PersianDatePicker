import 'package:fl_persian_date_picker/components/pdp_dialog.dart';
import 'package:flutter/material.dart';
import './components/persian_date_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var _visible = true;
  final controller = PageController(initialPage: 0);

  opendatepicker(BuildContext context) {
    print("opendatepicker");

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return pdpDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      appBar: AppBar(
        title: Text("persian date picker"),
      ),
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
