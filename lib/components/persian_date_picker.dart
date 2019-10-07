import 'package:fl_persian_date_picker/components/slider.dart';
import 'package:flutter/material.dart';

class pdp extends StatefulWidget {
  PageController _yearController =
      PageController(viewportFraction: 0.2, initialPage: 0);
  PageController _monthController =
      PageController(viewportFraction: 0.35, initialPage: 0);

  String replaceFarsiNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], farsi[i]);
    }

    return input;
  }

  @override
  _pdpState createState() => _pdpState();
}

class _pdpState extends State<pdp> {
  var _selectedYear, _selectedMonth;

  List<Widget> renderMonths() {
    return [
      Container(
        child: Text(
          "فروردین",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "اردیبهشت",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "خرداد",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "تیر",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "مرداد",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "شهریور",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "مهر",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "آبان",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "آذر",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "دی",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "بهمن",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
      Container(
        child: Text(
          "اسفند",
          textAlign: TextAlign.center,
        ),
        width: 50,
      ),
    ];
  }

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
                    reverse: true,
                    controller: widget._monthController,
                    onPageChanged: onMonthChange,
                    children: renderMonths(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16, right: 16),
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[Text("hi")],
            ),
          )
        ],
      ),
    );
  }
}
