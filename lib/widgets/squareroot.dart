import 'package:flutter/material.dart';
import 'dart:math';

Widget squareroot(int a, double width) {
  Color textColor = Colors.blueAccent;
  var count = 10;
  var padding = 8.0;
  var fontSize = 37.0;
  int i = 10;
  return Scaffold(
    backgroundColor: Colors.grey[200],
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.blueAccent, width: 1.5)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: count,
              itemBuilder: (context, index) {
                index++;
                int no = (a - 1) * i + index;
                var c = pow(no, 1 / 2);



                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(12, -15),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√$no ',
                                  style: TextStyle(color: textColor,fontSize: fontSize,fontWeight: FontWeight.bold)),
                            ]),
                          ),
                        Padding(
                          padding: EdgeInsets.only(right: padding),
                          child: Text(
                            '=',
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                        ),
                        Container(
                          width: width*1.2,
                          child: Text(
                            '${c.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ),
  );
}
