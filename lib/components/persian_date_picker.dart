import 'package:fl_persian_date_picker/components/slider.dart';
import 'package:flutter/material.dart';

class pdp extends StatefulWidget {
  PageController _yearController =
      PageController(viewportFraction: 0.2, initialPage: 0);
  PageController _monthController =
      PageController(viewportFraction: 0.35, initialPage: 0);

  var months = [
    Container(
      color: Colors.black,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.red,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.black,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.red,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.black,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.red,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.black,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.red,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.black,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.red,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.black,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
    Container(
      color: Colors.red,
      child: Text(
        "فروردین",
        textAlign: TextAlign.center,
      ),
      width: 50,
    ),
  ];

  @override
  _pdpState createState() => _pdpState();
}

class _pdpState extends State<pdp> {
  var _selectedYear, _selectedMonth;

  // var _selectedIndex = 0;

  onYearChanged(int number) {
    setState(() {
      _selectedYear = number;
    });
  }

  onMonthChange(int monthIndex) {
    setState(() {
      _selectedMonth = monthIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("hi from pdp");
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.63,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xFF8234DB),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                slider(
                  child: PageView.builder(
                    controller: widget._yearController,
                    onPageChanged: onYearChanged,
                    itemBuilder: (context, index) {
                      var style = TextStyle(
                        color: index == _selectedYear
                            ? Colors.white
                            : Colors.white30,
                        fontSize: index == _selectedYear ? 18 : 14,
                      );
                      return Align(
                        alignment: Alignment.center,
                        child: Text(
                          index.toString(),
                          textAlign: TextAlign.center,
                          style: style,
                        ),
                      );
                    },
                    itemCount: 12,
                  ),
                ),
                Container(
                    height: 1,
                    color: Colors.white24,
                    margin: EdgeInsets.only(
                        top: 16, bottom: 16, right: 36, left: 36)),
                slider(
                  child: PageView(
                    controller: widget._monthController,
                    onPageChanged: onMonthChange,
                    children: widget.months,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
