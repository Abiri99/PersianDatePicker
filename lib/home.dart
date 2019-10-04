import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  dialogContent(BuildContext context) {
    return Container(
        height: 350,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("سال"),
            Container(
              height: 50,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Align(
                    child: Text("${index}"),
                  );
                },
                itemCount: 4,
              ),
            )
          ],
        ));
  }

  opendatepicker(BuildContext context) {
    print("opendatepicker");

    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: null,
      content: dialogContent(context),
      contentPadding: EdgeInsets.all(0),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("persian date picker"),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          color: Colors.orange,
          child: Text("open date picker"),
          onPressed: () {
            opendatepicker(context);
          },
        ),
      ),
    );
  }
}
