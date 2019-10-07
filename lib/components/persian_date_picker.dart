import 'package:fl_persian_date_picker/components/slider.dart';
import 'package:flutter/material.dart';

class pdp extends StatefulWidget {
  PageController _controller =
      PageController(viewportFraction: 0.2, initialPage: 0);
  // PageController monthController =
  //     PageController(viewportFraction: 0.15, initialPage: 0);
  @override
  _pdpState createState() => _pdpState();
}

class _pdpState extends State<pdp> {
  // var _selectedYear, _selectedMonth;

  var _selectedIndex = 0;

  onPageChanged(int number) {
    setState(() {
      _selectedIndex = number;
    });
  }

  // onMonthChange(int monthIndex) {
  //   setState(() {
  //     _selectedMonth = monthIndex;
  //   });
  // }

  // onYearChange(int yearIndex) {
  //   setState(() {
  //     _selectedYear = yearIndex;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("hi from pdp");
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 350,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xFF8234DB),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                slider(
                  child: PageView.builder(
                    controller: widget._controller,
                    onPageChanged: onPageChanged,
                    itemBuilder: (context, index) {
                      var style = TextStyle(
                        color: index == _selectedIndex
                            ? Colors.white
                            : Colors.white30,
                        fontSize: index == _selectedIndex ? 18 : 14,
                      );
                      return Text(
                        index.toString(),
                        textAlign: TextAlign.center,
                        style: style,
                      );
                    },
                    itemCount: 12,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
