import 'package:fl_persian_date_picker/components/line.dart';
import 'package:fl_persian_date_picker/components/month_slider.dart';
import 'package:fl_persian_date_picker/components/year_slider.dart';
import 'package:fl_persian_date_picker/format_persian_date.dart';
import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import '../replace_farsi_number.dart';

class Pdp extends StatefulWidget {
  var setDate;
  PageController _yearController;
  PageController _monthController;
  var currentDate = Jalali.now();

  Pdp(setDate) {
    this.setDate = setDate;
    _yearController =
        PageController(viewportFraction: 0.25, initialPage: currentDate.year);
    _monthController =
        PageController(viewportFraction: 0.35, initialPage: currentDate.month);
  }

  @override
  _PdpState createState() => _PdpState();
}

class _PdpState extends State<Pdp> {
  var _selectedYear, _selectedMonth, _selectedDay;
  var currentDate = Jalali.now();

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

  _PdpState() {
    _selectedYear = currentDate.year;
    _selectedMonth = currentDate.month;
  }

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
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Colors.blueAccent,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    replaceFarsiNumber(formatPersianDate(widget.currentDate)),
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                YearSlider(
                    widget._yearController, _selectedYear, onYearChanged),
                Line(),
                MonthSlider(
                    widget._monthController, _selectedMonth, onMonthChange),
                // Line(),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        offset: const Offset(0.0, 0.0),
                      ),
                      const BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(0.0, 0.0),
                        spreadRadius: -2.0,
                        blurRadius: 50.0,
                      ),
                    ],
                  ),
                  child: Table(
                    textDirection: TextDirection.rtl,
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: Text(
                            'ش',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            'ی',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            'د',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            'س',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            'چ',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            'پ',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            'ج',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Expanded(
                  // height: 100,
                  // child: daysTable(firstDayName: Jalali(_selectedYear, _selectedMonth+1).formatter.wN,),
                  child: Container(
                    // color: Colors.red,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
                    alignment: Alignment(0.0, 0.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: GridView.builder(
                        itemCount: Jalali(getSelectedYear(), getSelectedMonth())
                                .monthLength +
                            Jalali(getSelectedYear(), getSelectedMonth(), 1)
                                .weekDay -
                            1,
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7),
                        itemBuilder: (BuildContext context, int index) {
                          index -=
                              Jalali(getSelectedYear(), getSelectedMonth(), 1)
                                      .weekDay -
                                  1;
                          return index >= 0
                              ? GestureDetector(
                                  onTap: () {
                                    widget.setDate(
                                        getSelectedYear().toString() +
                                            '/' +
                                            getSelectedMonth().toString() +
                                            '/' +
                                            (index + 1).toString());

                                    setState(() {
                                      _selectedDay = index;
                                    });
                                    print(_selectedDay.toString());
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    // margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: index == _selectedDay
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      replaceFarsiNumber(
                                          (index + 1).toString()),
                                      style: TextStyle(fontSize: 18, color: index == _selectedDay ? Colors.blue : Colors.white,),
                                    ),
                                  ),
                                )
                              : Text('');
                        },
                      ),
                    ),
                  ),
                ),
                Line(),
                Container(
                  margin: EdgeInsets.only(bottom: 8, right: 8, left: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  height: 33,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      print("dialog closed");
                    },
                    child: Text(
                      "بستن",
                      style: TextStyle(color: Colors.blueAccent),
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
