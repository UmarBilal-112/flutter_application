import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_generator_flutter/description_card.dart';
import 'package:password_generator_flutter/pwgen.dart';

import 'cloud/cloud.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

void main() {
  runApp(MaterialApp(
    home: PasswordGenerator(),
  ));
}

class PasswordGenerator extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PasswordGeneratorState createState() => _PasswordGeneratorState();
}

class _PasswordGeneratorState extends State<PasswordGenerator> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double drawerSize = 
        SizeConfig.screenWidth * 0.8 > 600 ? 800 : SizeConfig.screenWidth * 0.8;
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: const Color(0x00FFFFF0),
        title: Text(
          "Safe Password Generator",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      // drawer: Container(
      //   width: drawerSize,
      //   child: Drawer(
      //     child: DescriptionWidget(),
      //   ),
      // ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Password Generator App'),
              ),
              ListTile(
                title: const Text('Easy Mode '),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(context,

                    MaterialPageRoute(builder: (context) =>  PasswordGenerationWidget()),);
                },
              ),
              ListTile(
                title: const Text('Hard Mode'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(context,

                    MaterialPageRoute(builder: (context) =>  PasswordGenerationWidget()),);
                },
              ),
              ListTile(
                title: const Text('Upload to Cloud Or Retrieve Password From Cloud'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(context,

                    MaterialPageRoute(builder: (context) =>  cloud()),);
                },
              ),

            ],
          )),
      body: PasswordGenerationWidget(),
    );
  }
}

// Left side's view
class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF9FBCFF),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 50.0,
            // margin: EdgeInsets.symmetric(vertical: 5.0),
            alignment: Alignment.center,
            child: DrawerHeader(
              child: Center(
                child: Text(
                  "Manual",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0x22000000),
              ),
              padding: EdgeInsets.all(2.0),
            ),
          ),
          DescriptionCards(storage: DescriptionStorage()),
        ],
      ),
    );
  }
}

// Right side's view
class PasswordGenerationWidget extends StatefulWidget {
  @override
  _PasswordGenerationWidgetState createState() =>
      _PasswordGenerationWidgetState();
}

class _PasswordGenerationWidgetState extends State<PasswordGenerationWidget> {
  final _pwKey = GlobalKey<FormState>();
  bool pwobscure = true;
  bool ewobscure = true;
  bool newobscure = true;
  bool _includeSpecialCharacter = true;
  String newPassword = "Sample password";
  String pw = "";
  String ezword = "";

  final pwController = TextEditingController();
  final ezwordController = TextEditingController();
  final lengthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double textfieldWidth = SizeConfig.blockSizeHorizontal * 40;
    double tableWidth = textfieldWidth + 130;
    double labelWidth = 80;

    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF74A0FF),
      child: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Column(
              // contents aligned
              children: [
                Container(
                  // TITLE
                  margin: EdgeInsets.all(16.0),
                  child: Text(
                    "Password Converter",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  // FORM
                  margin: EdgeInsets.all(16.0),
                  child: Column(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Materials for a new password",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )), // title
                        Center(
                          child: Container(
                              margin: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Form(
                                      key: _pwKey,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: tableWidth,
                                            child: Row(children: [
                                              SizedBox(
                                                  width: labelWidth,
                                                  child: Text("Password")),
                                              SizedBox(
                                                width: textfieldWidth,
                                                child: TextFormField(
                                                  obscureText: pwobscure,
                                                  controller: pwController,
                                                  onChanged: (value) {
                                                    pw = value;
                                                  },
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                child: IconButton(
                                                  iconSize: 20,
                                                  icon: Icon(
                                                      Icons.remove_red_eye),
                                                  onPressed: () {
                                                    setState(() {
                                                      this.pwobscure =
                                                          !this.pwobscure;
                                                      pwController.text = pw;
                                                      pwController.selection =
                                                          TextSelection.fromPosition(
                                                              TextPosition(
                                                                  offset: pwController
                                                                      .text
                                                                      .length));
                                                    });
                                                  },
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            width: tableWidth,
                                            child: Row(children: [
                                              SizedBox(
                                                  width: labelWidth,
                                                  child: Text("Easy words")),
                                              SizedBox(
                                                width: textfieldWidth,
                                                child: TextFormField(
                                                  obscureText: ewobscure,
                                                  controller: ezwordController,
                                                  onChanged: (value) {
                                                    ezword = value;
                                                  },
                                                ),
                                              ),
                                              IconButton(
                                                iconSize: 20,
                                                icon:
                                                    Icon(Icons.remove_red_eye),
                                                onPressed: () {
                                                  setState(() {
                                                    this.ewobscure =
                                                        !this.ewobscure;
                                                    ezwordController.text =
                                                        ezword;
                                                    ezwordController.selection =
                                                        TextSelection.fromPosition(
                                                            TextPosition(
                                                                offset:
                                                                    ezwordController
                                                                        .text
                                                                        .length));
                                                  });
                                                },
                                              )
                                            ]),
                                          ),
                                          Container(
                                            width: tableWidth,
                                            child: Row(children: [
                                              SizedBox(
                                                  width: labelWidth,
                                                  child: Text("Length")),
                                              SizedBox(
                                                width: textfieldWidth,
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  controller: lengthController,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(2.0),
                                              )
                                            ]),
                                          ),
                                          Container(
                                            width: tableWidth,
                                            height: 80,
                                            child: Row(children: [
                                              SizedBox(
                                                  width: labelWidth,
                                                  child: Center(
                                                    child: Text(
                                                        "Special Characters"),
                                                  )),
                                              Container(
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: textfieldWidth,
                                                        height: 30,
                                                        child: Row(
                                                          children: [
                                                            Radio(
                                                              value: true,
                                                              groupValue:
                                                                  _includeSpecialCharacter,
                                                              onChanged:
                                                                  (bool value) {
                                                                setState(() {
                                                                  _includeSpecialCharacter =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            Text(
                                                              'Include',
                                                              style: TextStyle(
                                                                fontSize: 15.0,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: textfieldWidth,
                                                        height: 30,
                                                        child: Row(
                                                          children: [
                                                            Radio(
                                                              value: false,
                                                              groupValue:
                                                                  _includeSpecialCharacter,
                                                              onChanged:
                                                                  (bool value) {
                                                                setState(() {
                                                                  _includeSpecialCharacter =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Text(
                                                              'Not Include',
                                                              style: TextStyle(
                                                                fontSize: 15.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: textfieldWidth * 0.2,
                                      height: 200,
                                      child: RaisedButton(
                                        child: const Text(
                                          "Generate",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            this.newPassword =
                                                PasswordGeneration.newPassword(
                                                    pwController.text.length !=
                                                            0
                                                        ? pwController.text
                                                        : "",
                                                    ezwordController
                                                                .text.length !=
                                                            0
                                                        ? ezwordController.text
                                                        : "",
                                                    lengthController
                                                                .text.length !=
                                                            0
                                                        ? int.parse(
                                                            lengthController
                                                                .text)
                                                        : 0,
                                                    _includeSpecialCharacter);
                                          });
                                        },
                                      ),
                                    ),
                                  ])),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
                child: Column(children: [
              Text("Output",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  )),
              Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text("New safe password"),
                    Container(
                      width: textfieldWidth * 1.3 + 100,
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            color: Colors.white,
                            width: textfieldWidth * 1.2,
                            height: 100,
                            child: Text(
                              newobscure
                                  ? '${newPassword.replaceAll(RegExp(r"."), "???")}'
                                  : newPassword,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: IconButton(
                              iconSize: 20,
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () {
                                setState(() {
                                  this.newobscure = !this.newobscure;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      child: const Text("Copy to Clipboard"),
                      onPressed: () {
                        Clipboard.setData(new ClipboardData(text: newPassword));
                      },
                    ),
                  ]))
            ])),
          ),
        ],
      ),
    );
  }
}
