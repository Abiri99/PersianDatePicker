import 'package:flutter/material.dart';

class daysTable extends StatefulWidget {
  var firstDayName;
  daysTable({
    this.firstDayName,
  });

  List<Widget> nullDays;
  fillNullDays() {
    var x;
    switch (firstDayName) {
      case 'شنبه':
        x = 0;
        break;
      case 'یک شنبه':
        x = 1;
        break;
      case 'دو شنبه':
        x = 2;
        break;
      case 'سه شنبه':
        x = 3;
        break;
      case 'چهار شنبه':
        x = 4;
        break;
      case 'پنج شنبه':
        x = 5;
        break;
      case 'جمعه':
        x = 6;
        break;
    }
    for (int i = 0; i < x; i++) {
      nullDays.add(null);
    }
  }

  @override
  _daysTableState createState() => _daysTableState();
}

class _daysTableState extends State<daysTable> {

  _daysTableState() {
    widget.fillNullDays();
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.rtl,
      children: [
        TableRow(children: [
          TableCell(
            child: Text(
              "ش",
              textAlign: TextAlign.center,
            ),
          ),
          TableCell(
            child: Text(
              "ی",
              textAlign: TextAlign.center,
            ),
          ),
          TableCell(
            child: Text(
              "د",
              textAlign: TextAlign.center,
            ),
          ),
          TableCell(
            child: Text(
              "س",
              textAlign: TextAlign.center,
            ),
          ),
          TableCell(
            child: Text(
              "چ",
              textAlign: TextAlign.center,
            ),
          ),
          TableCell(
            child: Text(
              "پ",
              textAlign: TextAlign.center,
            ),
          ),
          TableCell(
            child: Text(
              "ج",
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        TableRow(children: [
          ...widget.nullDays,
          Text('data')
        ]),
        TableRow(),
        TableRow(),
        TableRow(),
        TableRow(),
      ],
    );
  }
}
