import 'package:flutter/material.dart';

class pdp extends StatefulWidget {
  PageController yearController =
      PageController(viewportFraction: 0.25, initialPage: 0);
  PageController monthController =
      PageController(viewportFraction: 0.15, initialPage: 0);
  var height = 350;
  @override
  _pdpState createState() => _pdpState();
}

class _pdpState extends State<pdp> {
  var _selectedYear, _selectedMonth;

  var _visible = false;
  double _height1 = 50;
  double _height2 = 300;

  onMonthChange(int monthIndex) {
    setState(() {
      _selectedMonth = monthIndex;
    });
  }

  onYearChange(int yearIndex) {
    setState(() {
      _selectedYear = yearIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("hi from pdp");
    return Container(
        height: 400,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 74,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                color: Colors.red,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
            ),
            Positioned(
              right: 16,
              left: 16,
              top: 16,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _height1 = 150 - _height1;
                    _visible = !_visible;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 240),
                  height: _height1,
                  decoration: BoxDecoration(
                    color: Color(0xFF8234DB),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("hi"),
                      Visibility(
                        visible: _visible,
                        child: Text("hi2"),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
