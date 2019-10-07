import 'package:flutter/material.dart';
import 'persian_date_picker.dart';

class pdpDialog extends StatefulWidget {
  @override
  _pdpDialogState createState() => _pdpDialogState();
}

class _pdpDialogState extends State<pdpDialog> {

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
