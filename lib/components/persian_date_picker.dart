import 'package:fl_persian_date_picker/components/line.dart';
import 'package:fl_persian_date_picker/components/month_slider.dart';
import 'package:fl_persian_date_picker/components/year_slider.dart';
import 'package:fl_persian_date_picker/format_persian_date.dart';
import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import '../replace_farsi_number.dart';

class Pdp extends StatefulWidget {
  PageController _yearController;

  PageController _monthController;

  var currentDate = Jalali.now();

  Pdp() {
    _yearController = PageController(
        viewportFraction: 0.2, initialPage: currentDate.year - 1000);
    _monthController = PageController(
        viewportFraction: 0.35, initialPage: currentDate.month - 1);
  }

  @override
  _PdpState createState() => _PdpState();
}

class _PdpState extends State<Pdp> {
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

  getSelectedYear() {
    return _selectedYear == null ? widget.currentDate.year : _selectedYear;
  }

  getSelectedMonth() {
    return _selectedMonth == null ? widget.currentDate.month : _selectedMonth;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xFF8234DB),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    replaceFarsiNumber(formatPersianDate(widget.currentDate)),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Line(),
                YearSlider(
                    widget._yearController, _selectedYear, onYearChanged),
                Line(),
                MonthSlider(
                    widget._monthController, _selectedMonth, onMonthChange),
                Line(),
                Expanded(
                  // height: 100,
                  child: Container(
                    alignment: Alignment.center,
                    child: GridView.builder(
                      itemCount: Jalali(getSelectedYear(), getSelectedMonth()+1).monthLength,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 7),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            replaceFarsiNumber((index + 1).toString()),
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
