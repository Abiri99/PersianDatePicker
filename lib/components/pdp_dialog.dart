import 'package:flutter/material.dart';
import 'persian_date_picker.dart';

class pdpDialog extends StatefulWidget {
  @override
  _pdpDialogState createState() => _pdpDialogState();
}

class _pdpDialogState extends State<pdpDialog> {
  double _height = 400;
  var _fColor = Colors.white, _sColor = Color(0xFF203858);
  double _cHeight = 68, _cWidth = 68;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: GestureDetector(
        onTap: () {
          print("hiding content");
          // setState(() {
          //   _visible = !_visible;
          // });
          // print(_visible);
        },
        child: Align(
            alignment: Alignment.centerRight,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Container(
                height: _cHeight,
                width: _cWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: _fColor,
                ),
              ),
            )),
      ),
      content: pdp(),
      backgroundColor: _sColor,
      contentPadding: EdgeInsets.only(
        left: 0,
        right: 0,
        top: 8,
        bottom: 8,
      ),
    );
  }
}
