import 'package:flutter/material.dart';
import 'persian_date_picker.dart';

class PdpDialog extends StatelessWidget {

  final Function setDate;
  PdpDialog({
    @required this.setDate
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      title: null,
      content: Pdp(setDate),
      backgroundColor: Colors.blue,
      contentPadding: const EdgeInsets.all(0),
    );
  }
}
