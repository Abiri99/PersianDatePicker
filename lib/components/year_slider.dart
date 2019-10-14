import 'package:flutter/material.dart';
import 'slider.dart';
import '../replace_farsi_number.dart';

class yearSlider extends StatelessWidget {
  PageController _yearController;
  int _selectedYear;
  Function onYearChanged;

  yearSlider(this._yearController, this._selectedYear, this.onYearChanged);

  @override
  Widget build(BuildContext context) {
    return slider(
      child: PageView.builder(
        controller: _yearController,
        onPageChanged: onYearChanged,
        itemBuilder: (context, index) {
          var style = TextStyle(
            color: index == _selectedYear ? Colors.white : Colors.white30,
            fontSize: index == _selectedYear ? 18 : 16,
          );
          var newIndex = index + 1000;
          return Align(
            alignment: Alignment.center,
            child: Text(
              replaceFarsiNumber(newIndex.toString()),
              textAlign: TextAlign.center,
              style: style,
            ),
          );
        },
        itemCount: 2000,
      ),
    );
  }
}
