import 'package:flutter/material.dart';
import 'components/pdp_dialog.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  var selectedDate;
  void setDate(String date) {
    this.setState(() {
      selectedDate = date;
    });
  }


  final controller = PageController(initialPage: 0);

  opendatepicker(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return PdpDialog(
            setDate: setDate,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      appBar: AppBar(
        title: Text("persian date picker"),
      ),
      // backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          color: Colors.orange,
          child: Text(selectedDate.toString()),
          onPressed: () {
            opendatepicker(context);
          },
        ),
      ),
    );
  }
}
