import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  dialogContent(BuildContext context) {
    return Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "سال",
              style: Theme.of(context).textTheme.title,
            ),
            Container(
                height: 35,
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("flash"),
                    Container(
                      width: 100,
                      child: PageView.builder(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Align(
                            child: Text(
                              "${index}",
                              style: Theme.of(context).textTheme.body1,
                            ),
                          );
                        },
                        itemCount: 4,
                      ),
                    ),
                    Text("flash"),
                  ],
                )),
            Text(
              "ماه",
              style: Theme.of(context).textTheme.body1,
            ),
            Container(
              height: 25,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Align(
                    child: Text(
                      "${index}",
                      style: Theme.of(context).textTheme.body1,
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
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
      backgroundColor: Color(0xFF203858),
      contentPadding: EdgeInsets.only(
        left: 0,
        right: 0,
        top: 16,
        bottom: 16,
      ),
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
