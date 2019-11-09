import 'package:flutter/material.dart';
import 'components/pdp_dialog.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  var selectedDate; //selected date stores date which user taped;

  void setDate(var dateList) {
    this.setState(() {
      selectedDate = dateList[2].toString() + '/' + dateList[1].toString() + '/' + dateList[0].toString();
    });
  }

  //this function shows the datepicker dialog
  opendatepicker(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PdpDialog(
          setDate: setDate,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      appBar: AppBar(
        title: Text("persian date picker"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.orange,
          child: selectedDate == null ? Text('انتخاب تاریخ') : Text(selectedDate.toString()),
          onPressed: () {
            opendatepicker(context);
          },
        ),
      ),
    );
  }
}
