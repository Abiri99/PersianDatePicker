import 'package:flutter/material.dart';

class slider extends StatefulWidget {

  final PageView child;

  slider({this.child});

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.arrow_back_ios,
              size: 14,
              color: Colors.black54,
            ),
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.6,
              alignment: Alignment.center,
              child: widget.child,
              // child: PageView.builder(
              //   controller: widget._controller,
              //   onPageChanged: onPageChanged,
              //   itemBuilder: (context, index) {
              //     var style = TextStyle(
              //       color:
              //           index == _selectedIndex ? Colors.white : Colors.white30,
              //       fontSize: index == _selectedIndex ? 18 : 14,
              //     );
              //     return Text(
              //       index.toString(),
              //       textAlign: TextAlign.center,
              //       style: style,
              //     );
              //   },
              //   itemCount: 12,
              // ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Colors.black54,
            ),
          ],
        ));
  }
}
