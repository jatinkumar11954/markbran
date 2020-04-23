import 'package:flutter/material.dart';
import 'package:markbran/screens/CustomerLog.dart';
import 'package:markbran/screens/CustomerSign.dart';
import 'package:markbran/screens/PharmaLog.dart';
import 'package:markbran/screens/PharmaSign.dart';
import 'package:markbran/screens/VeteriLog.dart';
import 'package:markbran/screens/VeteriSign.dart';

import 'adjust/short.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CustomerLog and CustomerSign',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
        routes: <String, WidgetBuilder>{
          //  'CustomerLogA': (BuildContext context) => new CustomerLogA(),
          'CustomerLog': (BuildContext context) => new CustomerLog(),

          'CustomerSign': (BuildContext context) => new CustomerSign(),
          'PharmaLog': (BuildContext context) => new PharmaLog(),

          'PharmaSign': (BuildContext context) => new PharmaSign(),
          'VeteriLog': (BuildContext context) => new VeteriLog(),

          'VeteriSign': (BuildContext context) => new VeteriSign(),
        });
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _dropList = ['English', "Telugu", "Hindi"];
  String _selected = "Select Language";

  @override
  Widget build(BuildContext context) {
    Short().init(context);
    return Scaffold(
        backgroundColor:
            //  Colors.white,
            Colors.blue[800],
        body:
            //  Stack(children: <Widget>[
            Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Image.asset(
                "img/xyzlogo.jpg",
                width: Short.w * 0.5,

                // width: 30,height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Short.h * 0.05),
              child: DropdownButton<String>(
                iconEnabledColor: Colors.white,
                items: _dropList
                    .map((drop) => DropdownMenuItem<String>(
                          child: Text(
                            drop,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          value: drop,
                        ))
                    .toList(),
                onChanged: (String value) {
                  setState(() => _selected = value);
                },
                hint: Text(
                  _selected,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Short.h * 0.1),
              child: SizedBox(
                width: Short.w * 0.7,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30)
                      // border:BoxBorder()
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: RaisedButton(
                        textColor: Colors.blue[800],
                        disabledTextColor: Colors.white,
                        color: Colors.white,
                        onPressed: () =>
                            Navigator.pushNamed(context, "CustomerLog"),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              "img/cus.png",
                              width: 30,
                              height: 50,
                            ),
                            Text("Customer Login",
                                style: TextStyle(
                                  fontSize: 20,
                                  // color:Colors.blue[800]
                                )),
                          ],
                        )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Short.h * 0.03),
              child: SizedBox(
                width: Short.w * 0.7,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30)
                      // border:BoxBorder()
                      ),
                  //
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: RaisedButton(
                        textColor: Colors.white,
                        // disabledTextColor: Colors.white,
                        color: Colors.blue[800],
                        onPressed: () =>
                            Navigator.pushNamed(context, "VeteriLog"),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Image.asset(
                                "img/cus.png",
                                width: 30,
                                height: 50,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Text("Vaterinarian Login",
                                  style: TextStyle(
                                    fontSize: 20,
                                    // color:Colors.white
                                  )),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Short.h * 0.03),
              child: SizedBox(
                width: Short.w * 0.7,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30)
                      // border:BoxBorder()
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: RaisedButton(
                      focusColor: Colors.white,
                        color: Colors.blue[800],
                        onPressed: () =>
                            Navigator.pushNamed(context, "PharmaLog"),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              "img/cus.png",
                              width: 30,
                              height: 50,
                            ),
                            Text("Pharmacy Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ))
        // ],),
        );
  }
}
