import 'package:flutter/material.dart';
import 'dart:math';

Widget square(int a, double width) {
  Color textColor = Colors.blueAccent;
  var count = 10;
  var padding = 8.0;
  var fontSize = 37.0;
  int i = 10;
  double inputChildWidth;
  double outputChildWidth;
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
                var c = pow(no, 2);

                if (no > 99) {
                  inputChildWidth = width * 1.3;
                } else if (no > 9) {
                  inputChildWidth = width/1.1;
                } else {
                  inputChildWidth = width / 1.32;
                }


                if (c > 900000) {
                  outputChildWidth = width * 1.8;
                } else if (c > 99 && c < 1000) {
                  outputChildWidth = width / 1.2;
                } else if (c > 999 && c < 10000) {
                  outputChildWidth = width * 1.2;
                } else if (c > 9999 && c < 100000) {
                  outputChildWidth = width * 1.28;
                } else if (c > 99999 && c < 1000000) {
                  outputChildWidth = width * 1.6;
                } else {
                  outputChildWidth = width / 1.4;
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Padding(
                        //   padding:
                        //       EdgeInsets.only(left: padding, right: padding),
                        //   child: Container(
                        //     width: width / 1.32,
                        //     child: Text(
                        //       '$no',
                        //       style: TextStyle(
                        //         fontSize: fontSize,
                        //         fontWeight: FontWeight.bold,
                        //         color: textColor,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          width: inputChildWidth,
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '$no',
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.bold)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '2 ',
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ]),
                          ),
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
                          width: outputChildWidth,
                          child: Text(
                            '$c',
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
