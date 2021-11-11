import 'package:flutter/material.dart';

Widget subtraction(int a, double width) {
  Color textColor = Colors.blueAccent;
  var count = 20;
  var padding = 8.0;
  var fontSize = 37.0;
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
              itemBuilder: (context, b) {
                b++;
                var c = a - b;

                Widget child;
                if (a < 10) {
                  child = Container(
                    width: width / 3,
                    child: Text(
                      '$a',
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  );
                } else if (a < 100) {
                  child = Container(
                    width: width / 1.8,
                    child: Text(
                      '$a',
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  );
                } else {
                  child = Container(
                    width: width / 1.32,
                    child: Text(
                      '$a',
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  );
                }

                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(left: padding, right: padding),
                          child: child,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: padding),
                          child: Text(
                            '-',
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: padding),
                          child: Container(
                            width: width / 1.97,
                            child: Text(
                              '$b',
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                              ),
                            ),
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
                          width: width,
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
