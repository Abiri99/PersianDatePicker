import 'package:flutter/material.dart';

class pdp extends StatefulWidget {
  var height = 350;
  @override
  _pdpState createState() => _pdpState();
}

class _pdpState extends State<pdp> {
  var _visible = true;
  double _height1 = 50;
  double _height2 = 300;
  @override
  Widget build(BuildContext context) {
    print("hi from pdp");
    return Container(
        height: 350,
        width: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _height1 = widget.height - _height1;
                  _height2 = widget.height - _height2;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: _height1,
                width: double.infinity,
                color: Colors.white,
                child: Text("animated"),
              ),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _height2 = 0;
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
            )
          ],
        ),
    );
  }
}
