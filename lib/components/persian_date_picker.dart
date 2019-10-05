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

  var _visible = true;
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
      height: 350,
      width: 500,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _height2 = 0;
                    });
                    print(_visible);
                  },
                  child: Text(
                    "سال",
                  ),
                ),
                Container(
                    height: 35,
                    width: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white24,
                          size: 16,
                        ),
                        Container(
                          width: 100,
                          child: PageView.builder(
                            controller: widget.yearController,
                            onPageChanged: onYearChange,
                            itemBuilder: (context, index) {
                              return Align(
                                child: Text("${index}",
                                    style: TextStyle(
                                        color: index == _selectedYear
                                            ? Colors.white
                                            : Colors.grey,
                                        fontSize:
                                            index == _selectedYear ? 18 : 12)),
                              );
                            },
                            itemCount: 4,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white24,
                          size: 16,
                        ),
                      ],
                    )),
                Text(
                  "ماه",
                  style: Theme.of(context).textTheme.body1,
                ),
                Container(
                  height: 25,
                  child: PageView.builder(
                    controller: widget.monthController,
                    onPageChanged: onMonthChange,
                    itemBuilder: (context, index) {
                      return Align(
                        child: Text(
                          "${index}",
                          style: TextStyle(
                              color: index == _selectedMonth
                                  ? Colors.blue
                                  : Colors.white),
                        ),
                      );
                    },
                    itemCount: 4,
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
