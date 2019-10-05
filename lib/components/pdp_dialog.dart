import 'package:flutter/material.dart';
import 'persian_date_picker.dart';

class pdpDialog extends StatefulWidget {
  @override
  _pdpDialogState createState() => _pdpDialogState();
}

class _pdpDialogState extends State<pdpDialog> {
  double _height = 400;
  var _fColor = Colors.white, _sColor = Color(0xFF203858);
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
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ),
      ),
      content: pdp(),
      backgroundColor: _sColor,
      contentPadding: EdgeInsets.only(
        left: 0,
        right: 0,
        top: 16,
        bottom: 16,
      ),
    );
  }
}