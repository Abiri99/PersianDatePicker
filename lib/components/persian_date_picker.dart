import 'package:flutter/material.dart';

class pdp extends StatefulWidget {
  @override
  _pdpState createState() => _pdpState();
}

class _pdpState extends State<pdp> {
  var _visible = true;
  double _height = 350;
  @override
  Widget build(BuildContext context) {
    print("hi from pdp");
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: _height,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      // visible: _visible,
      child: Visibility(
        visible: _visible,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _height = 0;
                });
                print(_visible);
              },
              child: Text(
                "سال",
                style: Theme.of(context).textTheme.title,
              ),
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
        ),
      ),
    );
  }
}
