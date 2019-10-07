import 'package:flutter/material.dart';
import 'persian_date_picker.dart';

class pdpDialog extends StatefulWidget {
  @override
  _pdpDialogState createState() => _pdpDialogState();
}

class _pdpDialogState extends State<pdpDialog> {
  double _height = 400;
  var _fColor = Colors.white, _sColor = Color(0xFF8234DB);
  double _cHeight = 68, _cWidth = 68;
  var _textColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: null,
      content: pdp(),
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.only(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
      ),
    );
  }
}
