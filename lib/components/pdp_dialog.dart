import 'package:flutter/material.dart';
import 'persian_date_picker.dart';

class PdpDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: null,
      content: Pdp(),
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
