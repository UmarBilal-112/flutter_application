import 'package:flutter/material.dart';
import 'package:math_tables/screens/addition.dart';
import 'package:math_tables/screens/cube.dart';
import 'package:math_tables/screens/cuberoot.dart';
import 'package:math_tables/screens/multiplication.dart';
import 'package:math_tables/screens/square.dart';
import 'package:math_tables/screens/squareroot.dart';
import 'package:math_tables/screens/subtraction.dart';
import 'package:math_tables/screens/division.dart';
import 'package:math_tables/widgets/cube.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Math Tables'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                multiplication(context),
                addition(context),
                subtraction(context),
              ],
            ),
            Row(
              children: <Widget>[
                division(context),
                square(context),
                cube(context),
              ],
            ),
            Row(
              children: <Widget>[
                squareroot(context),
                cuberoot(context),
                // multiplication(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget multiplication(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Multiplication(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '1 x 1 = 1',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 x 2 = 2',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 x 3 = 3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Multiplication '),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget addition(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Addition(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '1 + 1 = 2',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 + 2 = 3',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 + 3 = 4',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Addition '),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget subtraction(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Subtraction(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '1 - 1 = 0',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 - 2 = -1',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 - 3 = -2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Subtraction '),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget division(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Division(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '1 / 1 = 1.0',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 / 2 = 0.5',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '1 / 3 = 0.3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Division '),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget square(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Square(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '1',
                                  style: TextStyle(color: Colors.white)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: ' =1',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '2',
                                  style: TextStyle(color: Colors.white)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: ' =4',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '3',
                                  style: TextStyle(color: Colors.white)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: ' =9',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Square '),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget squareroot(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SquareRoot(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(5, -8),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white,fontSize: 8),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√1 =1.00',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(5, -8),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white,fontSize: 8),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√2 =1.41',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(5, -8),
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white,fontSize: 8),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√3 =1.73',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Square Root'),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cube(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Cube(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '1',
                                  style: TextStyle(color: Colors.white)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: ' =1',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '2',
                                  style: TextStyle(color: Colors.white)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: ' =8',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '3',
                                  style: TextStyle(color: Colors.white)),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(2, -4),
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: ' =27',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Cube '),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cuberoot(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CubeRoot(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(5, -8),
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white,fontSize: 8),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√1 =1.00',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(5, -8),
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white,fontSize: 8),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√2 =1.26',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(5, -8),
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white,fontSize: 8),
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: '√3 =1.44',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Cube Root'),
                Text('Table')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
